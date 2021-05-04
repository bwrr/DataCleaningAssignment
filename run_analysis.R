#Getting and Cleaning Data course Assignment

library(dplyr)

#set the working directory
setwd("C:/RScripts/datasciencecoursera/ClearningDataCourse/DataCleaningAssignment/UCI HAR Dataset")

#load the files
features <- read.table("features.txt", col.names = c("number","functions"))
activity_labels <- read.table("activity_labels.txt", col.names = c("label", "activity"))
subject_train <- read.table("train/subject_train.txt", col.names = "Subject")
x_train <- read.table("train/X_train.txt", col.names = features$functions)
y_train <- read.table("train/y_train.txt", col.names = "label")
subject_test <- read.table("test/subject_test.txt", col.names = "Subject")
x_test <- read.table("test/X_test.txt", col.names = features$functions)
y_test <- read.table("test/y_test.txt", col.names = "label")


#combine the data sets
test<-cbind(subject_test,x_test, y_test)
train<-cbind(subject_train,x_train,y_train)
alldat<-rbind(test,train)

#Find mean and standard deviation for each measurement
meas <- alldat %>% select(Subject, label, contains("mean"), contains("std"))

#use descriptive activity names for data
alldat$label <- activity_labels[alldat$label, 2]
#table(alldat$label)
#names(alldat)

#Create a second, independent tidy data set with the average of each variable for each activity and each subject.

VarAvg <- meas %>%
    group_by(Subject, label) %>%
    summarise_all(funs(mean))

write.table(VarAvg, "TidyData.txt", row.names = FALSE)




