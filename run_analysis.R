setwd("C:/COMMUNISM/coursera/Data Science/3/progass/sources/gcd_course_project")

##loading subject ids
subject_train <- read.csv("./UCI HAR Dataset/train/subject_train.txt", sep = "", header = FALSE)
subject_test <- read.csv("./UCI HAR Dataset/test/subject_test.txt", sep = "", header = FALSE)

##loading training and testing datasets
X_train <- read.csv("./UCI HAR Dataset/train/X_train.txt", sep = "", header = FALSE)
X_test <- read.csv("./UCI HAR Dataset/test/X_test.txt", sep = "", header = FALSE)

##loading training and testing labels
y_train <- read.csv("./UCI HAR Dataset/train/y_train.txt", sep = "", header = FALSE)
y_test <- read.csv("./UCI HAR Dataset/test/y_test.txt", sep = "", header = FALSE)

##renaming features on both
features <- read.csv("./UCI HAR Dataset/features.txt", sep = "", header = FALSE)
colnames(X_train)<-as.character(features[,2])
colnames(X_test)<-as.character(features[,2])

##searching for needed features (ones that have "std()" or "mean()" in their names)
neededFeatures <- c(grep("std\\(\\)", features[,2]), grep("mean\\(\\)", features[,2]))

##separating columns we need (via list of features we got on previous step)
X_train <- X_train[,neededFeatures]
X_train$subject <- subject_train$V1
X_train$activity <- y_train$V1

X_test <- X_test[,neededFeatures]
X_test$subject <- subject_test$V1
X_test$activity <- y_test$V1


##loading activity labels from file
activity_labels <- read.csv("./UCI HAR Dataset/activity_labels.txt", sep = "", header = FALSE)
colnames(activity_labels) <- c('activityid','activityname')

##binding columns with "normal" activity names
train <- merge(X_train,activity_labels, by.x="activity", by.y = "activityid")
test  <- merge(X_test,activity_labels, by.x="activity", by.y = "activityid")

##combining test and training data
res <- rbind(test, train)
library("data.table")

resdt <- data.table(res)

#melting and dcasting for getting databy activities and subjects
resMelted  <- melt(res, id=c("activityname", "subject"))
resDcasted <- dcast (resMelted, activityname + subject~variable, mean)