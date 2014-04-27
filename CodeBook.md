CodeBook

Two datasets are created by run_analysis.R:

1. tidyData (10299    68)

  Description: it is a data.frame with data related to the mean and standard variation of Human Activity Recognition Using Smartphones 
2. dataMean (180  68)

  Description: it is a data.frame with the average of all attributes for each subject and activity


Attributes in both tidyData and dataMean

"subject"
  It is a number between 1-30 indicating a person doing an activity
  
"activity"
  It is an option among the following:
  
    1. WALKING
    2. WALKING_UPSTAIRS
    3. WALKING_DOWNSTAIRS
    4. SITTING
    5. STANDING
    6. LAYING

The rest of attributes are explained in the zip file with the raw data (just mean and std columns were extracted)

"tBodyAcc-mean()-X"

"tBodyAcc-mean()-Y"

"tBodyAcc-mean()-Z"

"tGravityAcc-mean()-X"

"tGravityAcc-mean()-Y"

"tGravityAcc-mean()-Z"

"tBodyAccJerk-mean()-X"

"tBodyAccJerk-mean()-Y"

"tBodyAccJerk-mean()-Z"

"tBodyGyro-mean()-X"

"tBodyGyro-mean()-Y"

"tBodyGyro-mean()-Z"

"tBodyGyroJerk-mean()-X"

"tBodyGyroJerk-mean()-Y"

"tBodyGyroJerk-mean()-Z"

"tBodyAccMag-mean()"

"tGravityAccMag-mean()"

"tBodyAccJerkMag-mean()"

"tBodyGyroMag-mean()"

"tBodyGyroJerkMag-mean()"

"fBodyAcc-mean()-X"

"fBodyAcc-mean()-Y"

"fBodyAcc-mean()-Z"

"fBodyAccJerk-mean()-X"

"fBodyAccJerk-mean()-Y"

"fBodyAccJerk-mean()-Z"

"fBodyGyro-mean()-X"

"fBodyGyro-mean()-Y"

"fBodyGyro-mean()-Z"

"fBodyAccMag-mean()"

"fBodyBodyAccJerkMag-mean()"

"fBodyBodyGyroMag-mean()"

"fBodyBodyGyroJerkMag-mean()"

"tBodyAcc-std()-X"

"tBodyAcc-std()-Y"

"tBodyAcc-std()-Z"

"tGravityAcc-std()-X"

"tGravityAcc-std()-Y"

"tGravityAcc-std()-Z"

"tBodyAccJerk-std()-X"

"tBodyAccJerk-std()-Y"

"tBodyAccJerk-std()-Z"

"tBodyGyro-std()-X"

"tBodyGyro-std()-Y"

"tBodyGyro-std()-Z"

"tBodyGyroJerk-std()-X"

"tBodyGyroJerk-std()-Y"

"tBodyGyroJerk-std()-Z"

"tBodyAccMag-std()"

"tGravityAccMag-std()"

"tBodyAccJerkMag-std()"

"tBodyGyroMag-std()"

"tBodyGyroJerkMag-std()"

"fBodyAcc-std()-X"

"fBodyAcc-std()-Y"

"fBodyAcc-std()-Z"

"fBodyAccJerk-std()-X"

"fBodyAccJerk-std()-Y"

"fBodyAccJerk-std()-Z"

"fBodyGyro-std()-X"

"fBodyGyro-std()-Y"

"fBodyGyro-std()-Z"

"fBodyAccMag-std()"

"fBodyBodyAccJerkMag-std()"

"fBodyBodyGyroMag-std()"

"fBodyBodyGyroJerkMag-std()"


Attributes in dataMean

  
Additional Notes

  In order to create tinyData and dataMean some transformations were used:
  
    1. File UCI HAR Dataset/features.txt was used to catch the names of the columns
    2. File UCI HAR Dataset/test/X_test.txt was used to extract test raw data (all columns)
    3. File UCI HAR Dataset/train/X_train.txt was used to extract training raw data (all columns)
    4. Two vectors were created selectedmean and selectedstd to store desirable columns
    5. All above was used to create an temporal data.frame called extratedData (with desirable columns)
    6. Two vectors activity and subject were created to add them to extratedData (this forms tidyData)
    7. dataMean was created using melt and dcast function in order to find the mean of all attributes by each subject and activity
