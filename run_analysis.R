run_analysis <- function() {
    ## read in sets of training and test data that are associated with activities
    ## and their measurements.  Extract only the mean and standard deviation from the data sets and
    ## group them by the subject IDs and activities and compute their mean 
    
    ## load dplyr for group_by and summarise_each function calls
    library(dplyr)
    
    ## read in the activity ID and names file.
    # Set stringsAsFactors so that activity names are not read in as a factor.
    activity_id_names <- read.table("./UCI_HAR_Dataset/activity_labels.txt", stringsAsFactors=FALSE) 
    
    # Read in the file that contains the columns we are interested in and their names
    # I do not want the variable names to be read in as factors.  Instead, read in the variable names as characters
    data <- read.table("./variable_col_names.txt", stringsAsFactors=FALSE) 
    
    
    # Separate the column numbers of the variables we are interested in
    columnNums <- c(data$V1)
    
    # Extract the variable names we are going to assign to the desired variables
    columnLabels <- c(data$V2)
    
    # Read in the activity data from the training set
    data <- read.table("./UCI_HAR_Dataset/train/X_train.txt")
    
    # The training set has the 561 variables.  Since We are interested in only the 
    # means and standard deviations, select the 66 variables we are interested in
    # and store it into "activity_data_train".
    activity_data_train <- data[, columnNums]
    
    # Assign the variable names that we read in to the column headings
    colnames(activity_data_train) <- columnNames
    
    # Read in the subject info for the training set
    subject_ID <- read.table("./UCI_HAR_Dataset/train/subject_train.txt")
    
    # Add the subject_ID to our data frame
    activity_data_train <- cbind(subject_ID, activity_data_train)
    
    # Change the name of the first variable(column) to "subjectID" 
    colnames(activity_data_train)[1] <- "subjectID"
    
    # Read in the activity ID for the training set. 
    activity_ID <- read.table("./UCI_HAR_Dataset/train/y_train.txt")
    
    # Add the activity ID to the activity_data_train as a new column.
    activity_data_train <- cbind(activity_ID, activity_data_train)
    
    # Merge this data frame with activity_id_names.  The common key is the activity ID that's in the 
    # first column of both data frames.  Since they are both in the column with the heading "V1", we don't have to 
    # specify the column to use for merging.
    temp <- merge(activity_id_names, activity_data_train)
    
    # Remove the first column that's activity id
    activity_data_train <- temp[-1]
    
    # Change the column name from V2 to activityName
    colnames(activity_data_train)[1] <- "activityName"
    
    # We need to execute the same steps for the test dataset
    data <- read.table("./UCI_HAR_Dataset/test/X_test.txt")
    activity_data_test <- data[, columnNums]
    colnames(activity_data_test) <- columnNames
    subject_ID <- read.table("./UCI_HAR_Dataset/test/subject_test.txt")
    activity_data_test <- cbind(subject_ID, activity_data_test)
    colnames(activity_data_test)[1] <- "subjectID"
    activity_ID <- read.table("./UCI_HAR_Dataset/test/y_test.txt")
    activity_data_test <- cbind(activity_ID, activity_data_test)
    temp <- merge(activity_id_names, activity_data_test)
    activity_data_test <- temp[-1]
    colnames(activity_data_test)[1] <- "activityName"
    
    # Combine the training set with the test set to create a single data frame.
    activity_data_all <- rbind(activity_data_train, activity_data_test)
    
    # Group the combined data frame by the activity name and subject ID.
    by_activity_id <- group_by(activity_data_all, activityName,  subjectID)
    
    # Produce an average of each variable for each activity and subject
    results <- summarise_each(by_activity_id, funs(mean))
    
    # write out the data frame in the working directory with a .txt suffix.
    file <- tempfile(pattern="combined_activity", tmpdir="./", fileext=".txt")
    write.table(results, file=file, row.names=FALSE)
}