# Getting-and-Cleaning-Data-Project

This project deals wih the collectng, cleaning of data and working on it.
The Data being worked on is collected from accelerometers from Samsung Galaxy S Smartphone.

## About the Project:
The data set is downloaded from the below link

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

This file UCI HAR Dataset contains
1.test file
2.train file
3.activity_labels.txt
4.feature.txt
5.features_info.txt
6.README.txt



## run_analysis.R is created in Rstudio. Following steps are programmed.

1.Merging the training and the test sets to create one data set.
2.Extracting only the measurements on the mean and standard deviation for each measurement. 
3.Using descriptive activity names to name the activities in the data set
4.Appropriately labels the data set with descriptive variable names. 
4.From the data set in step 4, creating a second, independent tidy data set with the average of each variable for each activity and each subject.

#Output of the script

tidydata.txt is produced in the working directory.

## Reproducing this project.
Download the dataset from the link provided above.

1. Using the setwd(), change the working directory to UCI HAR Dataset folder.
2. open the run_analysis.R file
3. Run the rscript.
