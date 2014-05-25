setwd("C:/COMMUNISM/coursera/Data Science/3/progass/sources/gcd_course_project")

subject_train <- read.csv("./UCI HAR Dataset/train/subject_train.txt", sep = "", header = FALSE)
subject_test <- read.csv("./UCI HAR Dataset/test/subject_test.txt", sep = "", header = FALSE)

X_train <- read.csv("./UCI HAR Dataset/train/X_train.txt", sep = "", header = FALSE)
X_test <- read.csv("./UCI HAR Dataset/test/X_test.txt", sep = "", header = FALSE)

y_train <- read.csv("./UCI HAR Dataset/train/y_train.txt", sep = "", header = FALSE)
y_test <- read.csv("./UCI HAR Dataset/test/y_test.txt", sep = "", header = FALSE)

features <- read.csv("./UCI HAR Dataset/features.txt", sep = "", header = FALSE)
colnames(X_train)<-as.character(features[,2])
colnames(X_test)<-as.character(features[,2])

neededFeatures <- c(grep("std\\(\\)", features[,2]), grep("mean\\(\\)", features[,2]))

X_train <- X_train[,neededFeatures]
X_train$subject <- subject_train$V1
X_train$activity <- y_train$V1

X_test <- X_test[,neededFeatures]
X_test$subject <- subject_test$V1
X_test$activity <- y_test$V1


activity_labels <- read.csv("./UCI HAR Dataset/activity_labels.txt", sep = "", header = FALSE)
colnames(activity_labels) <- c('activityid','activityname')

train <- merge(X_train,activity_labels, by.x="activity", by.y = "activityid")
test  <- merge(X_test,activity_labels, by.x="activity", by.y = "activityid")

res <- rbind(test, train)

