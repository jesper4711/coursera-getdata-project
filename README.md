# Coursera getting and cleaning data course project
This repository contains code and data for the Coursera course given by Johns Hopkins on Getting and cleaning data
## Instructions for exercise:
 
You should create one R script called run_analysis.R that does the following. <br>
1. Merges the training and the test sets to create one data set.<br>
2. Extracts only the measurements on the mean and standard deviation for each measurement. <br>
3. Uses descriptive activity names to name the activities in the data set <br>
4. Appropriately labels the data set with descriptive variable names. <br>
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.<br>

## Data was downloaded from:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

## Background paper on Activity Tracking for smartphones
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Running the code
The file run_analysis.R needs the dataset to be in a subfolder called UCI HAR Dataset/ <br>
Execution of the script run_analysis.R does preprocessing of the dataset as described above and returns a "tidy" dataset for further processing.

## The dataset is described in the file Codebook.md