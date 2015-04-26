# Getting-and-Cleaning-Data-Project

This project deals wih the collectng, cleaning of data and working on it.
The Data being worked on is collected from accelerometers from Samsung Galaxy S Smartphone.

## About the Project:
The data set is downloaded from the below link

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

This file UCI HAR Dataset contains
*test file
*train file
*activity_labels.txt
*feature.txt
*features_info.txt
*README.txt

----Before running the R script change the working directory to UCI HAR Dataset folder--

## run_analysis.R is created in Rstudio. Following steps are programmed.
*Merging the training and the test sets to create one data set.
*Extracting only the measurements on the mean and standard deviation for each measurement. 
*Using descriptive activity names to name the activities in the data set
*Appropriately labels the data set with descriptive variable names. 
*From the data set in step 4, creating a second, independent tidy data set with the average of each variable for each activity and each subject.

#Output of the script
tidydata.txt is produced in the working directory.
