##  Read features vector, the names of the test and training columns
colNamesData <- read.table(file="UCI HAR Dataset/features.txt", header=FALSE)
colNamesData <- as.vector(colNamesData[, 2])

##  Read test and training dataset
testData <- read.table(file="UCI HAR Dataset/test/X_test.txt", header=FALSE)
trainData <- read.table(file="UCI HAR Dataset/train/X_train.txt", header=FALSE)

##  asign names to the datasets
names(testData) <- colNamesData
names(trainData) <- colNamesData

##  1. Merges the training and the test sets to create one data set.
mergeData <- rbind(testData, trainData)

##  2. Extracts only the measurements on the mean and standard deviation for each measurement. 
selectedmean <- grep("mean\\(\\)", names(mergeData))
selectedstd <- grep("std\\(\\)", names(mergeData))

extractedData <- mergeData[, c(selectedmean, selectedstd)]

##  3. Uses descriptive activity names to name the activities in the data set
##  Read names of activities
activityLabel <- read.table(file="UCI HAR Dataset/activity_labels.txt", header=FALSE)

##  Create activity column
activityTestData <- read.table(file="UCI HAR Dataset/test/y_test.txt", header=FALSE)
activityTrainData <- read.table(file="UCI HAR Dataset/train/y_train.txt", header=FALSE)
activity <- rbind(activityTestData, activityTrainData)


##  Label activity column with appropriate names
activity <- as.data.frame(factor(activity[, 1], labels=activityLabel[, 2]))
names(activity) <- "activity"

##  Create subject column
subjectTestData <- read.table(file="UCI HAR Dataset/test/subject_test.txt", header=FALSE)
subjectTrainData <- read.table(file="UCI HAR Dataset/train/subject_train.txt", header=FALSE)
subject <- as.vector(rbind(subjectTestData, subjectTrainData))
names(subject) <- "subject"

## 4. Appropriately labels the data set with descriptive activity names. 
##  add subject and activity column
tidyData <- cbind(subject, activity, extractedData)

##  5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
library(reshape2)
dataMelt <- melt(data=tidyData, id=c("subject", "activity"))
dataMean <- dcast(dataMelt, subject + activity ~ variable, mean)

tidyData
dataMean
