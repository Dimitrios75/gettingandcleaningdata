# Path to the dataset directories.
generalPath <- file.path("UCI HAR Dataset")
trainPath <- file.path("UCI HAR Dataset","train")
testPath <- file.path("UCI HAR Dataset","test")

# Reading feature names and activity names.
varNames <- read.table(file.path(generalPath, "features.txt"))
activities <- read.table(file.path(generalPath, "activity_labels.txt"), sep=" ")

# Merging training set parts.
trainSet <- read.table(file.path(trainPath, "X_train.txt"), sep=" ", strip.white = TRUE)
trainSet <- trainSet[,2:ncol(trainSet)]
trainLabels <- read.table(file.path(trainPath, "y_train.txt"), sep=" ")
trainActivities <- merge(trainLabels, activities)
trainSubjects <- read.table(file.path(trainPath, "subject_train.txt"), sep=" ")
trainSet<-cbind(trainActivities$V2, trainSubjects, trainSet)
names(trainSet)<- c("Activity", "Subject", varNames$V2)

#Merging test set parts.
testSet <- read.table(file.path(testPath, "X_test.txt"), sep=" ", strip.white = TRUE)
testSet <- testSet[,2:ncol(testSet)]
testLabels <- read.table(file.path(testPath, "y_test.txt"), sep=" ")
testActivities <- merge(testLabels, activities)
testSubjects <- read.table(file.path(testPath, "subject_test.txt"), sep=" ")
testSet<-cbind(testActivities$V2, testSubjects, testSet)
names(testSet)<- c("Activity", "Subject", varNames$V2)

# Merging train set and testing set.
allDataSet <- rbind(trainSet, testSet)

# Selecting mean and std variables.
myVars=c(1, 2, grep("mean", names(allDataSet)), grep("std", names(allDataSet)))
resultDataSet <- allDataSet[,myVars]

# Computing variable means.
meansDataSet <- NULL
for(iSubject in 1:30){
    for(iActivity in activities$V2){
        subset<-filter(resultDataSet, Subject==iSubject & Activity==iActivity)
        if((dim(subset)[1])!=0){
            results <- apply(subset[,-(1:2)], 2, mean, na.rm=TRUE)
            meansDataSet<-rbind(meansDataSet, c(iActivity, iSubject, results))
        }
    }
}
names(meansDataSet)<- names(resultDataSet)