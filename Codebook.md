

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

explanation of the data http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The file run_analysis.R will first download the file.  The script does assume all the data files are in the working directory.

It will get the column names for the data out of features.txt file. 

It will then load in the x_test and x_train files and merge them into one dataset, set the names, and strip out all but the mean and std columns for the measurements. Afterwhich it will clean up the column names. The same procedures will be applied to the 'Y' data.

After getting and merging the y data, the script will get the 'activity' information and load it into the Y data such that there will be an "activity_id" and description column in the data set. It will then get the subject data merge them and then merge all three sets (x,y, subject) in order to get a dataset with the subject, activity, and the measurements.

It will then get the averages for each measurement for each activity for each subject and print that out into a file.  Each of these variables were averaged by subject/activity via summarize/means process.

The variables for the data are found in these files:
 [1]"tbodyacc-mean-x"           "tbodyacc-mean-y"           "tbodyacc-mean-z"          
 [4] "tbodyacc-std-x"            "tbodyacc-std-y"            "tbodyacc-std-z"           
 [7] "tgravityacc-mean-x"        "tgravityacc-mean-y"        "tgravityacc-mean-z"       
[10] "tgravityacc-std-x"         "tgravityacc-std-y"         "tgravityacc-std-z"        
[13] "tbodyaccjerk-mean-x"       "tbodyaccjerk-mean-y"       "tbodyaccjerk-mean-z"      
[16] "tbodyaccjerk-std-x"        "tbodyaccjerk-std-y"        "tbodyaccjerk-std-z"       
[19] "tbodygyro-mean-x"          "tbodygyro-mean-y"          "tbodygyro-mean-z"         
[22] "tbodygyro-std-x"           "tbodygyro-std-y"           "tbodygyro-std-z"          
[25] "tbodygyrojerk-mean-x"      "tbodygyrojerk-mean-y"      "tbodygyrojerk-mean-z"     
[28] "tbodygyrojerk-std-x"       "tbodygyrojerk-std-y"       "tbodygyrojerk-std-z"      
[31] "tbodyaccmag-mean"          "tbodyaccmag-std"           "tgravityaccmag-mean"      
[34] "tgravityaccmag-std"        "tbodyaccjerkmag-mean"      "tbodyaccjerkmag-std"      
[37] "tbodygyromag-mean"         "tbodygyromag-std"          "tbodygyrojerkmag-mean"    
[40] "tbodygyrojerkmag-std"      "fbodyacc-mean-x"           "fbodyacc-mean-y"          
[43] "fbodyacc-mean-z"           "fbodyacc-std-x"            "fbodyacc-std-y"           
[46] "fbodyacc-std-z"            "fbodyaccjerk-mean-x"       "fbodyaccjerk-mean-y"      
[49] "fbodyaccjerk-mean-z"       "fbodyaccjerk-std-x"        "fbodyaccjerk-std-y"       
[52] "fbodyaccjerk-std-z"        "fbodygyro-mean-x"          "fbodygyro-mean-y"         
[55] "fbodygyro-mean-z"          "fbodygyro-std-x"           "fbodygyro-std-y"          
[58] "fbodygyro-std-z"           "fbodyaccmag-mean"          "fbodyaccmag-std"          
[61] "fbodybodyaccjerkmag-mean"  "fbodybodyaccjerkmag-std"   "fbodybodygyromag-mean"    
[64] "fbodybodygyromag-std"      "fbodybodygyrojerkmag-mean" "fbodybodygyrojerkmag-std"
