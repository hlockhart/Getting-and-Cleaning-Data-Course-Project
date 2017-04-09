##
## Build a tidy data set to represent data collected from Samsung Galaxy S smartphone accelerometers 
## Data for this project was obtained from here: 
## https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
## 

run_analysis <- function() {

  ## this script uses the dplyr library so it is called to esure that the functions are available
    library(dplyr)

  ## read in activity_labels.txt and X_test.txt column headers from features.txt 
  ## the data folder "UCI HAR Dataset" should be located in the working directory
    ## only the second column of data was loaded as column headers are in sequence
       xheaders <- read.table("./UCI HAR Dataset/features.txt", 
                              colClasses = "character")[,2]
      
    ## column names were assigned to facilitate matching 
        activitylabels <- read.table("./UCI HAR Dataset/activity_labels.txt", 
                                     col.names=c("label","activity"))

    ## Test and Trial data sets were individually loaded and combined column names were
    ## assigned while reading the tables to ensure they were properly assigned
    ## X_test.txt and X_trial.txt received column names from the the features.txt file
    ## y_test.txt, subject_test and y_trial.txt, subject_trial.txt files were column 
    ## bound to the X data
    
    ## Test data
        xtest <- read.table("./UCI HAR Dataset/test/X_test.txt", col.names = xheaders)
        ytest <- read.table("./UCI HAR Dataset/test/y_test.txt", col.names = "activity",
                            colClasses = "factor")
        subjecttest <- read.table("./UCI HAR Dataset/test/subject_test.txt", 
                                  col.names = "subject", colClasses = "character")
        testdata <- bind_cols(subjecttest,ytest,xtest)

    ## Train Data
        xtrain <- read.table("./UCI HAR Dataset/train/X_train.txt", col.names = xheaders)
        ytrain <- read.table("./UCI HAR Dataset/train/y_train.txt", col.names = "activity",
                             colClasses = "factor")
        subjecttrain <- read.table("./UCI HAR Dataset/train/subject_train.txt", 
                                   col.names = "subject", colClasses = "character")
        traindata <- bind_cols(subjecttrain,ytrain,xtrain)

    ## Test and Train data sets were combined and headers were cleaned of periods
        combined_data <- bind_rows(testdata,traindata)
        names(combined_data) <- gsub("*\\.*","",names(combined_data))

    ## The combined data set was parsed to select subject, activity, mean, and std columns
        extracted_data <- select(combined_data, matches("subject"), 
                                 matches("activity"), contains("mean"), contains("std"))

    ## In the activity column, activity number was replaced with a descriptive activity label
        extracted_data <- mutate(extracted_data, activity = 
                              activitylabels[match(extracted_data[,2], activitylabels[,1]),2])


    ## Aggregate the parsed data to show averages for each variable vs. activity and subject
    ## then arrange the data
      aggregated_data <- aggregate(select(extracted_data, c(-subject, -activity)), 
                                   by = select(extracted_data, c(subject,activity)), 
                                   FUN=mean)
      
      aggregated_data <- arrange(aggregated_data, subject, activity)

    
    ## write the aggregated tidy dataset to a text file in the working directory   
      write.table(aggregated_data,"tidydata.txt", row.name=FALSE)


}