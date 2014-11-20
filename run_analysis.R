# run_analysis.R
# This script requires the dplyr and the data.table packages. 
library(data.table)
library(dplyr)

## Reading data
## Assume all necessary data available under "./getdata_projectfiles_UCI HAR Dataset".
X_train         <- read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/X_train.txt", quote="\"")
y_train         <- read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/y_train.txt", quote="\"")
subject_train   <- read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/subject_train.txt", quote="\"")
 
X_test          <- read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/X_test.txt", quote="\"") 
y_test          <- read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/y_test.txt", quote="\"")
subject_test    <- read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/subject_test.txt", quote="\"") 

activity_labels <- read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/activity_labels.txt", quote="\"", stringsAsFactors=F)
featuresIn      <- read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/features.txt", quote="\"",stringsAsFactors=F)
#> head(featuresIn,4)
#V1                V2
#1  1 tBodyAcc-mean()-X
#2  2 tBodyAcc-mean()-Y
#3  3 tBodyAcc-mean()-Z
#4  4  tBodyAcc-std()-X
#> 
 col_for_mean <- grepl("-mean\\(\\)",featuresIn[[2]]) # for later use (Step 2)
 col_for_std  <- grepl("-std\\(\\)", featuresIn[[2]]) # for later use (Step 2)


# merging "train" data and "test" data (Step 1)
 X_all <- rbind(X_test,X_train)
 y_all <- rbind(y_test,y_train)                     # activity
 subject_all <-rbind(subject_test,subject_train)    # subject ID
 names(subject_all) <-"Subject"

# extracting records regarding to mean and std  (Step 2)
 X_extracted <- X_all[, (col_for_mean|col_for_std) ]
 features_extracted <- featuresIn[[2]][(col_for_mean|col_for_std)]

## activity list; replaced with more descriptive ones rather than simple numbers (Step 3)
 activity <- factor(unlist(y_all))  # factor requires atomic elements as input.
 levels(activity) <- activity_labels[,"V2"]

#Appropriately labels the dataset with descriptive variable names (Step 4)
#Cleaning feature labels
 featuresLabels <- gsub(",","_",features_extracted)  # remove ","
 featuresLabels <- gsub("\\(\\)","",featuresLabels)  # remove "()"
 featuresLabels <- gsub("-","",featuresLabels)       # remove "-"


 alldata      <- cbind(X_extracted,activity,subject_all)
 alldatatable <- data.table(alldata)  #  will use the data.table package.

 setnames(alldatatable,names(alldatatable),c(featuresLabels,"activity","Subject"))

# Step 5
 final<-alldatatable[,lapply(.SD,mean),by=list(Subject,activity),.SDcols=featuresLabels]
 final <- arrange(final,Subject) # Ordered by Subject 1...30 # will require the dplyr package.
# This dataset will be written out to a file and submitted for grading.
 write.table(final,file="tidyDatasetStep5.txt",row.name=FALSE)
# This ends the analysis script.
