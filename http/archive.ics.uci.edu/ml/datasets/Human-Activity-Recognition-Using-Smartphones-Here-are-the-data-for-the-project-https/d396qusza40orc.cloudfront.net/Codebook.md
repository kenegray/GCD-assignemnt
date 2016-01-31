

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

explanation of the data 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The file run_analysis.R will first download the file.

It will get the column names for the data out of features.txt file.  It will then load in the x_test and x_train files and merge them into one dataset, set the names, and strip out all but the mean and std columns for the measurements. Afterwhich it will clean up the column names.  The same procedures will be applied to the 'Y' data.

The script will get the 'activity' information and load it into the Y data such that there will be an "activity_id" and description column in the data set.  It will then get the subject data merge them and then merge all three sets (x,y, subject) in order to get a dataset with the subject, activity, and the measurements.  

It will then get the averages for each measurement for each activity for each subject and print that out into a file.
