
# 1. Merging data sets

activityLabels <- read.table("./activity_labels.txt")
features <- read.table("./features.txt")

#--------- reaing test datasets--------
xtest <- read.table("./test/X_test.txt")
ytest <- read.table("./test/y_test.txt")
subject_test <- read.table("./test/subject_test.txt")

#Naming columns
colnames(activityLabels) = c("activityID", "Activity")




#-------reading train dataset----------

xtrain <- read.table("./train/X_train.txt")
ytrain <- read.table("./train/y_train.txt")
subject_train <- read.table("./train/subject_train.txt")



# combining Datasets
xData <- rbind(xtrain, xtest)


yData <- rbind(ytrain, ytest)

colnames(yData) <- "activity"
subject <- rbind(subject_train, subject_test)
colnames(subject) <- "subject"

# 2. Extracting only the measurements on the mean and standard deviation for each measurement

mean_and_std <- grep("-(mean|std)\\(\\)", features[, 2])

# subset the desired columns
xData <- xData[, mean_and_std]

# correct the column names
names(xData) <- features[mean_and_std, 2]

finalData <- cbind(xData, subject, yData)

#3. Use descriptive activity names to name the activities in the data set

yData[, 1] <- activities[yData[, 1], 2]

# correct column name
names(yData) <- "activity"

#4. Appropriately labels the data set with descriptive variable names. 
names(finalData)<-gsub("^t", "time", names(finalData))
names(finalData)<-gsub("^f", "frequency", names(finalData))
names(finalData)<-gsub("Acc", "Accelerometer", names(finalData))
names(finalData)<-gsub("Gyro", "Gyroscope", names(finalData))
names(finalData)<-gsub("Mag", "Magnitude", names(finalData))
names(finalData)<-gsub("BodyBody", "Body", names(finalData))

#5. creates a second, independent tidy data set with the average of each variable for each activity and each subject.
averages <- ddply(finalData, .(subject, activity), function(x) colMeans(x[, 1:66]))

write.table(averages, "tidydata.txt", row.name=FALSE)
