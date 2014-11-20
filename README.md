#README.md

This task was performed as a requirement to fulfillment of the course "Getting    and Cleaning Data" administered by Coursera.
The task is to write an R script which reads the input files and processes the acquired data to generate a tidy dataset which summarizes the original dataset in a designated manner.

###Deliverables
\#  | Item           | Description
--|----------------|---------------- 
1.| README.md            | This file
2.| run_analysis.R       | R script file performing designated anaysis
3.| tidyDatasetStep5.txt | Output file generated by run_analysis.R; uploaded separately to the Coursera's submission website.
4.| CodeBook.md          | Code book describing the variables in tidyDatasetStep5.txt

###Input
Source: "Human Activity Recognition Using Smartphones Dataset Version 1.0"[1]

Downloaded from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

"UCI HAR Dataset" is the root directory of the dataset when the downloaded zip file is expanded at your working directory.

The following files were used for analysis.
For details, consult with the original dataset's README.txt.

Item Number  |File                      |Description
--|--------------------------|--------------------------
1.|./activity_labels.txt     |6 activity types ("WALKING", "WALKING_UPSTAIRS", ...)
2.|./features.txt            |561 features(\*1)
3.|./test/subject_test.txt   |An identifier of the subject who belonged to the "test" group and carried out the experiment; 2947 obs.(\*2) of 1 variable
4.|./test/X_test.txt         |2947 obs. of 561 variables
5.|./test/y_test.txt         |2947 obs. of 1 variable
6.|./train/subject_train.txt |An identifier of the subject who belonged to the "train" group and carried out the experiment; 7352 obs. of 1 variable
7.|./train/X_train.txt       |7352 obs. of 561 variables
8.|./train/y_train.txt       |7352 obs. of 1 variable

Note

1. According to the original dataset's README.txt, body motion captured by a smartphone's acceleration sensor was featured by these 561 variables.
2. "obs." means observations.

### Brief Explanation for run_analysis.R

The codes require the dplyr package and the data.table package.

Procedures

1. Read necessary data files.
2. Merge the test set and the train set into one.
3. Extract data for the features regarding mean and standard deviation.
  Records for 66 features and 10299 observations have resulted.
4. Clean the variable names.
5. Take average for each feature per activity (6 types) and per subject (30 subjects) basis. Records for 66 features and 180 observations ( 6 types x 30 subjects) have resulted. Store the records into a final dataset.
6. Write out the final dataset.

###Reference

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
