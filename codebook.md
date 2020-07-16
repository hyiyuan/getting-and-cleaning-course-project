variables	              Description	                            Values	                                                       Transformation
-------------------------------------------------------------------------------------------------------------------------------------------------------
ID	                 unique participant ID 	        numeric variable: 1-30 (totally 30 particpants)	           1. raw data are from  two files:  subject_test.txt and                                                                                                                               subject_train.text; 
                                                                                                               2. merge data in the step #1
Activity	           6 types of activities	        character variable: walking, waling_upstairs, 
                                                    walking_downstaris, sitting, standing, laying	             1. raw data in the format (1:6) are from  two files:  y_test.txt                                                                                                                  and y_train.text; activity_labes.txt shows the descriptive ctivity names
                                                                                                               2. merge data in the step #1
                                                                                                               3. In the Step #3, replace the 1:6 with activity names by using mapvalues in plyr package"
tBodyAcc-mean()-X	  the average of this variable    numeric variable;                                          1. raw data are from  two files:  x_test.txt and x_train.text;
                    for the activity and the                                                                   2. merge data in the step #1. Also, in the step #1, the descrpitve  name was added to the variable. The name is from the file, features.txt
                    subject showed on the same row;                                                            3. in the step #2, extract only the measurements on the mean and standard deviation for each measurement, that is the variable name with only mean() and std().
                                                                                                               4. in the step #5, group ID and activity first and then calculate the average of each variable by using aggregate commend"

The Description, value and transformation are same for the following varibles in the average_data. txt. 

tBodyAcc-mean()-Y
tBodyAcc-mean()-Z
tBodyAcc-std()-X
tBodyAcc-std()-Y
tBodyAcc-std()-Z
tGravityAcc-mean()-X
tGravityAcc-mean()-Y
tGravityAcc-mean()-Z
tGravityAcc-std()-X
tGravityAcc-std()-Y
tGravityAcc-std()-Z
tBodyAccJerk-mean()-X
tBodyAccJerk-mean()-Y
tBodyAccJerk-mean()-Z
tBodyAccJerk-std()-X
tBodyAccJerk-std()-Y
tBodyAccJerk-std()-Z
tBodyGyro-mean()-X
tBodyGyro-mean()-Y
tBodyGyro-mean()-Z
tBodyGyro-std()-X
tBodyGyro-std()-Y
tBodyGyro-std()-Z
tBodyGyroJerk-mean()-X
tBodyGyroJerk-mean()-Y
tBodyGyroJerk-mean()-Z
tBodyGyroJerk-std()-X
tBodyGyroJerk-std()-Y
tBodyGyroJerk-std()-Z
tBodyAccMag-mean()
tBodyAccMag-std()
tGravityAccMag-mean()
tGravityAccMag-std()
tBodyAccJerkMag-mean()
tBodyAccJerkMag-std()
tBodyGyroMag-mean()
tBodyGyroMag-std()
tBodyGyroJerkMag-mean()
tBodyGyroJerkMag-std()
fBodyAcc-mean()-X
fBodyAcc-mean()-Y
fBodyAcc-mean()-Z
fBodyAcc-std()-X
fBodyAcc-std()-Y
fBodyAcc-std()-Z
fBodyAccJerk-mean()-X
fBodyAccJerk-mean()-Y
fBodyAccJerk-mean()-Z
fBodyAccJerk-std()-X
fBodyAccJerk-std()-Y
fBodyAccJerk-std()-Z
fBodyGyro-mean()-X
fBodyGyro-mean()-Y
fBodyGyro-mean()-Z
fBodyGyro-std()-X
fBodyGyro-std()-Y
fBodyGyro-std()-Z
fBodyAccMag-mean()
fBodyAccMag-std()
fBodyBodyAccJerkMag-mean()
fBodyBodyAccJerkMag-std()
fBodyBodyGyroMag-mean()
fBodyBodyGyroMag-std()
fBodyBodyGyroJerkMag-mean()
fBodyBodyGyroJerkMag-std()
