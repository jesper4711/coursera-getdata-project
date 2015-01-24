## You should create one R script called run_analysis.R that does the following. 
## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive variable names. 
## 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
##
##
## helper function to load either test/train dataset
load_dataset <- function (datapwd, setname, features, labels) {

  ## paths
  pwd <- paste(datapwd, "/", setname, "/", sep = "")
  datapwd <- paste(pwd, "X_", setname, ".txt", sep = "")
  labelspwd <- paste(pwd, "y_", setname, ".txt", sep = "")
  subjectspwd <- paste(pwd, "subject_", setname, ".txt", sep = "")
  
  ## read data from disk
  data <- read.table(datapwd)[, features$index]
  colnames(data) <- features$label
  
  ## add the activity- and subject labels
  labels <- read.table(labelspwd)[, 1]
  data$labels <- factor(labels)  
  subjects <- read.table(subjectspwd)[, 1]
  data$subjects <- factor(subjects)  

  ## return the data set
  data
}


run_analysis <- function() {
  
  datapwd <- "UCI HAR Dataset"
  
  ## read in aggregated features (mean/std)
  features <- read.table(paste(datapwd, "/", "features.txt", sep=""), col.names=c("index","label"))
  features <- features[grepl("mean|std", features$label, ignore.case=TRUE),]
  
  ## read in activity labels
  labels <- read.table(paste(datapwd, "/", "activity_labels.txt", sep=""))
  
  ## read the test and train dataset
  train <- load_dataset(datapwd, "train", features, labels)
  test <- load_dataset(datapwd, "test", features, labels)
  data <- rbind(train,test)
  
  # Generate a "tidy" data set
  #tidy_data <- data[, lapply(.SD, mean), by=list(label, subject)]
  
  # Clean the variable names
  cols <- colnames(data)
  cols <- gsub("mean", "Mean", cols)
  cols <- gsub("std", "Std", cols)
  cols <- gsub("gravity", "Gravity", cols)
  cols <- gsub("BodyBody", "Body", cols)
  cols <- gsub("[(),--]", "", cols)
  colnames(data) <- cols
  
  ## creating a new (tidy) data frame with averaged variables
  t1 <- aggregate(data[,1], by=list(data$subjects,data$labels), FUN=mean)
  tdata <- data.frame(t1[,3])
  for (i in 1:length(cols)){
    ti <- aggregate(data[,i], by=list(data$subjects,data$labels), FUN=mean)
    tdata[,i] <- ti[,3]
  }
  tdata[,length(cols)-1] <- ti[,1]
  tdata[,length(cols)] <- ti[,2]
  colnames(tdata) <- cols
  
  # Write the tidy data to file
  write.csv(tdata, file = "tidy_data.csv", row.names = FALSE, quote = FALSE)
  
  # Return the tidy data set
  tdata
}

