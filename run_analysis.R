#Getting and cleaning data course project

#setup workspace
rm(list=ls())
setwd("C:/Users/hyiyuan/Downloads/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset")

#1. Merges the training and the test sets to create one data set.
##read train data

x_train <- read.table("./train/X_train.txt")
y_train <- read.table("./train/Y_train.txt")
s_train <- read.table("./train/subject_train.txt")

# read test data
x_test <- read.table("./test/X_test.txt")
y_test <- read.table("./test/Y_test.txt")
s_test <- read.table("./test/subject_test.txt")

#merge train data and test data, then add colnames 
measure_data <- rbind(x_train, x_test)
Activity_data <- rbind(y_train, y_test)
IDdata <- rbind(s_train, s_test)
measure_colname <- read.table("./features.txt")
colnames(measure_data)<-as.character(measure_colname$V2)
colnames(IDdata)<-c("ID")
colnames(Activity_data)<-c("Activity")

#2. Extracts only the measurements on the mean and standard deviation for each measurement.
## only include colnames with mean() and std()
mean_SD_data<-measure_data[,grep("mean\\W()|std\\W()",colnames(measure_data))]


#3. Uses descriptive activity names to name the activities in the data set
library(plyr)
activity_name <- read.table("./activity_labels.txt")
Activity_data$Activity<-mapvalues(Activity_data$Activity,from=c(activity_name$V1),to=as.character(activity_name$V2))

#4. Appropriately labels the data set with descriptive variable names.
mean_SD_data_2<-cbind(IDdata,mean_SD_data,Activity_data)

#5. From the data set in step 4, creates a second, 
#independent tidy data set with the average of each variable for each activity 
#and each subject.
average_data<-aggregate(.~ID+Activity, data=mean_SD_data_2,FUN=mean)

#output the results
write.table(average_data,file = "average_data.txt",row.names = FALSE)
