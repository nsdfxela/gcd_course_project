setwd("C:/COMMUNISM/coursera/Data Science/3/progass/sources/gcd_course_project")

subject_train <- read.csv("./UCI HAR Dataset/train/subject_train.txt", sep = "", header = FALSE)
X_train <- read.csv("./UCI HAR Dataset/train/X_train.txt", sep = "", header = FALSE)
y_train <- read.csv("./UCI HAR Dataset/train/y_train.txt", sep = "", header = FALSE)
features <- read.csv("./UCI HAR Dataset/features.txt", sep = "", header = FALSE)
colnames(X_train)<-as.character(features[,2])
neededFeatures <- c(grep("std\\(\\)", features[,2]), grep("mean\\(\\)", features[,2]))
