#Gregg Powell
#Course 3: Getting and Cleaning Data
#Week 4 - Peer Graded Assignment





#You should create one R script called run_analysis.R that does the following.

#Merges the training and the test sets to create one data set.
#Extracts only the measurements on the mean and standard deviation for each measurement.
#Uses descriptive activity names to name the activities in the data set
#Appropriately labels the data set with descriptive variable names.
#From the data set in step 4, creates a second, independent tidy data set with the average of each variable 
#for each activity and each subject.


setwd("C:/_TEMP/_R_WORK_TEMP/Johns_Hopkins_Data_Science/Module 3-Getting and Cleaning Data/week4_peer_assignment")

#Note - I did not use R to unzip the data, create directories, or new files - that's just a waste of time.
#also note - the subject_train.txt and subject_test.txt files show up as chinese characters in Windows Notepad, but as a column of numbers in wordpad - that's odd.


library(dplyr)

#load data tables from expirement tables
features <- read.table("UCI HAR Dataset/features.txt", col.names = c("n","functions"))

#head(features)- #checking....comment out

activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt", col.names = c("code", "activity"))

#head(activity_labels)- #checking....comment out

subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt", col.names = "subject")

#head(subject_test)- #checking....comment out

x_test <- read.table("UCI HAR Dataset/test/X_test.txt", col.names = features$functions)

#head(x_test)- #checking....comment out

y_test <- read.table("UCI HAR Dataset/test/y_test.txt", col.names = "code")

#head(y_test)- #checking....comment out

subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt", col.names = "subject")

#head(subject_train)#checking....comment out

x_train <- read.table("UCI HAR Dataset/train/X_train.txt", col.names = features$functions)

#head(x_train)- #checking....comment out

y_train <- read.table("UCI HAR Dataset/train/y_train.txt", col.names = "code")

#head(y_train) - #checking....comment out

#row bind the x train and x test values....
x_bound <- rbind(x_train, x_test)

#row bind the y train and y test values....
y_bound <- rbind(y_train, y_test)

#row bind the subject train and subject test data.....
subject_bound <- rbind(subject_train, subject_test)

#Merge the training and the test sets to create one data set........... 

combined <- cbind(subject_bound, x_bound, y_bound)

head(combined)

#Extract only the measurements on the mean and standard deviation for each measurement.........

extract <- combined %>% select(subject, code, contains("mean"), contains("std"))

head(extract)

#replaces the numbers in the 2nd column (header "code") with the activity names contained in activity_label..............
extract$code <- activity_labels[extract$code, 2]

#check it......
head(extract)

#Appropriately label data set with descriptive variable names.

names(extract)<-gsub("code", "ACTIVITY", names(extract))
names(extract)<-gsub("Acc", "ACCELEROMETER", names(extract))
names(extract)<-gsub("Gyro", "GYROSCOPE", names(extract))
names(extract)<-gsub("BodyBody", "BODY", names(extract))
names(extract)<-gsub("Mag", "MAGNITUDE", names(extract))
names(extract)<-gsub("^t", "TIME", names(extract))
names(extract)<-gsub("^f", "FREQUENCY", names(extract))
names(extract)<-gsub("tBody", "TIME-BODY", names(extract))
names(extract)<-gsub("-mean()", "MEAN", names(extract))
names(extract)<-gsub("-std()", "STD-DEV", names(extract))
names(extract)<-gsub("-freq()", "FREQUENCY2", names(extract))
names(extract)<-gsub("angle", "ANGLE", names(extract))
names(extract)<-gsub("gravity", "GRAVITY", names(extract))

#check it.....again.
head(extract)


Independant_Data_Averages <- extract %>% 
  group_by(subject, ACTIVITY) %>% 
  summarise_all(funs(mean))
#make sure to add row.name=FALSE 
write.table(Independant_Data_Averages, "RESULT_Independant_Data_Averages.txt", row.name=FALSE)
#why did they use text files and not .csv files? That was dumb.

class(Independant_Data_Averages)
dim(Independant_Data_Averages)
summary(Independant_Data_Averages)

#check the final product.....
head(Independant_Data_Averages)

#and I wish we had practical exercises that seemed more relevent.


