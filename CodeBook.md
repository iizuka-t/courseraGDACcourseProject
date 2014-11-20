
#tidyDatasetStep5 Codebook

180 rows by 68 columns
        

Column |  Variable name     |   Description
-------|--------------------|-------------------
1      | "Subject"          | Subject's labels:  1 ... 30
2      | "activity"         | activity types

The activity types are as follows in this order for each subject: "STANDING", "SITTING", "LAYING", "WALKING", "WALKING_DOWNSTAIRS", "WARLKING_UPSTAIRS".

These two variables ("Subject" and "activity") constitute a total of 180 (= 30 x 6 ) rows.

The rest of variables corresponds to the average of the variables found in the original dataset(\*1). With respect to each variable, the average was taken for each activity ( six types of activity in all) and subject ( 30 subjects in all), respectively.  Below is the listing of the variable names in this dataset and the original ones:

Column |  Variable name     |       Original variable name
-------|--------------------|-------------------------------
3      | "tBodyAccmeanX"            |"tBodyAcc-mean()-X"              
4      | "tBodyAccmeanY"	    |"tBodyAcc-mean()-Y"              
5      | "tBodyAccmeanZ"	    |"tBodyAcc-mean()-Z"              
6      | "tBodyAccstdX"	            |"tBodyAcc-std()-X"               
7      | "tBodyAccstdY"	            |"tBodyAcc-std()-Y"               
8      | "tBodyAccstdZ"	            |"tBodyAcc-std()-Z"               
9      | "tGravityAccmeanX"         |"tGravityAcc-mean()-X"           
10     | "tGravityAccmeanY"         |"tGravityAcc-mean()-Y"           
11     | "tGravityAccmeanZ"         |"tGravityAcc-mean()-Z"           
12     | "tGravityAccstdX"          |"tGravityAcc-std()-X"           
13     | "tGravityAccstdY"          |"tGravityAcc-std()-Y"           
14     | "tGravityAccstdZ"          |"tGravityAcc-std()-Z"           
15     | "tBodyAccJerkmeanX"        |"tBodyAccJerk-mean()-X"         
16     | "tBodyAccJerkmeanY"        |"tBodyAccJerk-mean()-Y"         
17     | "tBodyAccJerkmeanZ"        |"tBodyAccJerk-mean()-Z"         
18     | "tBodyAccJerkstdX"         |"tBodyAccJerk-std()-X"          
19     | "tBodyAccJerkstdY"         |"tBodyAccJerk-std()-Y"          
20     | "tBodyAccJerkstdZ"         |"tBodyAccJerk-std()-Z"          
21     | "tBodyGyromeanX"           |"tBodyGyro-mean()-X"            
22     | "tBodyGyromeanY"           |"tBodyGyro-mean()-Y"            
23     | "tBodyGyromeanZ"           |"tBodyGyro-mean()-Z"            
24     | "tBodyGyrostdX"	    |"tBodyGyro-std()-X"             
25     | "tBodyGyrostdY"	    |"tBodyGyro-std()-Y"             
26     | "tBodyGyrostdZ"	    |"tBodyGyro-std()-Z"             
27     | "tBodyGyroJerkmeanX"       |"tBodyGyroJerk-mean()-X"        
28     | "tBodyGyroJerkmeanY"       |"tBodyGyroJerk-mean()-Y"        
29     | "tBodyGyroJerkmeanZ"       |"tBodyGyroJerk-mean()-Z"        
30     | "tBodyGyroJerkstdX"        |"tBodyGyroJerk-std()-X"         
31     | "tBodyGyroJerkstdY"        |"tBodyGyroJerk-std()-Y"         
32     | "tBodyGyroJerkstdZ"        |"tBodyGyroJerk-std()-Z"         
33     | "tBodyAccMagmean"          |"tBodyAccMag-mean()"            
34     | "tBodyAccMagstd"           |"tBodyAccMag-std()"             
35     | "tGravityAccMagmean"       |"tGravityAccMag-mean()"         
36     | "tGravityAccMagstd"        |"tGravityAccMag-std()"          
37     | "tBodyAccJerkMagmean"      |"tBodyAccJerkMag-mean()"        
38     | "tBodyAccJerkMagstd"       |"tBodyAccJerkMag-std()"         
39     | "tBodyGyroMagmean"         |"tBodyGyroMag-mean()"           
40     | "tBodyGyroMagstd"          |"tBodyGyroMag-std()"            
41     | "tBodyGyroJerkMagmean"     |"tBodyGyroJerkMag-mean()"       
42     | "tBodyGyroJerkMagstd"      |"tBodyGyroJerkMag-std()"        
43     | "fBodyAccmeanX"	    |"fBodyAcc-mean()-X"             
44     | "fBodyAccmeanY"	    |"fBodyAcc-mean()-Y"             
45     | "fBodyAccmeanZ"	    |"fBodyAcc-mean()-Z"             
46     | "fBodyAccstdX"	            |"fBodyAcc-std()-X"              
47     | "fBodyAccstdY"	            |"fBodyAcc-std()-Y"              
48     | "fBodyAccstdZ"	            |"fBodyAcc-std()-Z"              
49     | "fBodyAccJerkmeanX"        |"fBodyAccJerk-mean()-X"         
50     | "fBodyAccJerkmeanY"        |"fBodyAccJerk-mean()-Y"         
51     | "fBodyAccJerkmeanZ"        |"fBodyAccJerk-mean()-Z"         
52     | "fBodyAccJerkstdX"         |"fBodyAccJerk-std()-X"          
53     | "fBodyAccJerkstdY"         |"fBodyAccJerk-std()-Y"          
54     | "fBodyAccJerkstdZ"         |"fBodyAccJerk-std()-Z"          
55     | "fBodyGyromeanX"           |"fBodyGyro-mean()-X"            
56     | "fBodyGyromeanY"           |"fBodyGyro-mean()-Y"            
57     | "fBodyGyromeanZ"           |"fBodyGyro-mean()-Z"            
58     | "fBodyGyrostdX"	    |"fBodyGyro-std()-X"             
59     | "fBodyGyrostdY"	    |"fBodyGyro-std()-Y"             
60     | "fBodyGyrostdZ"	    |"fBodyGyro-std()-Z"             
61     | "fBodyAccMagmean"          |"fBodyAccMag-mean()"            
62     | "fBodyAccMagstd"           |"fBodyAccMag-std()"             
63     | "fBodyBodyAccJerkMagmean"  |"fBodyBodyAccJerkMag-mean()"    
64     | "fBodyBodyAccJerkMagstd"   |"fBodyBodyAccJerkMag-std()"     
65     | "fBodyBodyGyroMagmean"     |"fBodyBodyGyroMag-mean()"       
66     | "fBodyBodyGyroMagstd"      |"fBodyBodyGyroMag-std()"        
67     | "fBodyBodyGyroJerkMagmean" |"fBodyBodyGyroJerkMag-mean()"
68     | "fBodyBodyGyroJerkMagstd"  |"fBodyBodyGyroJerkMag-std()"    



Note
*1 A downloadable data source was:
   https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.
   The features, each of which corresponds to the variable names of the original dataset, are listed in:     "UCI HAR Dataset"/features.txt, which is also supplied in the zip file.

This ends the codebook.
