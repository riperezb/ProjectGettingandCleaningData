ProjectGettingandCleaningData
=============================

Peer Assessment

There is just one script: 
  -run_analysis.R
  

The steps of this script are as follows:

1.  Read features vector, the names of the test and training columns
2.  Read test and training dataset
3.  Assign names to the datasets
4.  Merges the training and the test sets to create one data set
5.  Extracts only the measurements on the mean and standard deviation for each measurement
6.  Uses descriptive activity names to name the activities in the data set
7.  Read names of activities
8.  Create activity column
9.  Label activity column with appropriate names
10.  Create subject column
11.  Appropriately labels the data set with descriptive activity names
12.  Creates a second, independent tidy data set with the average of each variable for each activity and each subject. This step uses melt function in order to reshape the extracted data and make a representation of one observation of one variable. Then dcast is used so that the mean of every attribute can be obtained.
  
