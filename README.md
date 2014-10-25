### 561 measurements were taken of a group of 30 volunteers involving 6 different acitvities  
### (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) while wearing a smart phone on their waist.  
### Out of 561 measurements, 66 meansurements were extracted, which focused on the mean and standard deviation of various  
### measurements.  


### This repository contains the files involved in computing the average of mean and standard deviation  
### for each activity and each subject.
### The dataset includes the following files:

'README.md'


'run_analysis.R' - R script that extracts the mean and standard deviation for each measurement,  
merges the traning and test sets, uses descriptive activity names, and creates a tidy data set with the   
average of each variable for each activity and subject.  


'codebook.md' - file containing the variable names used.


'code_run.txt' - a file that contains the output from most of the run_analysis script.


'combined_activity.txt' - contains the average of the mean and standard deviation of the measurements for each activity and each subject.

This is posted at Coursera.

The output file is a tidy set because it meets the following criteria:

  * Each variable appears in a single column.  
  * Each row contains an observation of all variables.  
  * The file deals with a single dataset.  


'variable_col_names.txt' - contains the column numbers of the measurements that we are interested in extracting. 
 
I put the info in a file so that we can edit the input file if we decide to add more data  

in the future.  for each column number, it contains the corresponding column names we are going to assign to the exracted variables(columns).

I went through the "features.txt" file and identified the column number of the mean

and standard deviation we are interested in.  I assigned the variable names in a Camel case because 

in software engineering, using all lower case for a long variable name is a big NO NO.


The following files are assumes to be in a sub-directory called 'UCI_HAR_Dataset'. 

They are used in the run_analysis script.


'train/X_train.txt' - activity data info in the training set

'train/y_train.txt' - the activity id (1-6) for the measurements included in X_train.txt.

'train/subject_train.txt' - contains each subjct that performed the activity.  There are 30 subjects.

'test/X_test.txt' - activity info in the test set.  There were 561 measurements.

'test/y_test.txt' - the activity id (1-6)

'test/subject_test.txt' - contains each subjct that performed the activity.   
Not all 30 subjects were included in the test set.

'activity_labels.txt' - contains the activity ID and its name.