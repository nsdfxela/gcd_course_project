CodeBook for "Tidy_new" dataset (by nsdfxela)
========================================================
Original data from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
--------------------------------------------------------
Tidy_new dataset includes data about human activity, which is collected from smartphones. Tidy_new is based on original "Human Activity Recognition Using Smartphones Dataset", which was preprocessed and cleaned for further analysis. All the information about data processing steps might be found in "README.md" file.
Tidy_new includes 68 columns.

Key columns are "activityname" and "subject". First one includes information about type of human activity and may be one of the following values :
* WALKING
* WALKING_UPSTAIRS
* WALKING_DOWNSTAIRS
* SITTING
* STANDING
* LAYING 

The second one, "subject" is numeric, which presents person's id.
All the rest columns are bounded within [-1,1]. 

List of "data" columns:

* tbodyacc.std.x            
* tbodyacc.std.y           
* tbodyacc.std.z            
* tgravityacc.std.x        
* tgravityacc.std.y         
* tgravityacc.std.z        
* tbodyaccjerk.std.x        
* tbodyaccjerk.std.y       
* tbodygyro.std.x          
* tbodygyro.std.y           
* tbodygyro.std.z          
* tbodygyrojerk.std.x       
* tbodygyrojerk.std.y      
* tbodygyrojerk.std.z       
* tbodyaccmag.std          
* tgravityaccmag.std        
* tbodyaccjerkmag.std      
* tbodygyromag.std          
* tbodygyrojerkmag.std     
* fbodyacc.std.x            
* fbodyacc.std.y           
* fbodyacc.std.z            
* fbodyaccjerk.std.x       
* fbodyaccjerk.std.y        
* fbodyaccjerk.std.z       
* fbodygyro.std.x          
* fbodygyro.std.y          
* fbodygyro.std.z           
* fbodyaccmag.std          
* fbodybodyaccjerkmag.std   
* fbodybodygyromag.std     
* fbodybodygyrojerkmag.std  
* tbodyacc.mean.x          
* tbodyacc.mean.y           
* tbodyacc.mean.z          
* tgravityacc.mean.x        
* tgravityacc.mean.y       
* tgravityacc.mean.z        
* tbodyaccjerk.mean.x      
* tbodyaccjerk.mean.y       
* tbodyaccjerk.mean.z      
* tbodygyro.mean.x          
* tbodygyro.mean.y         
* tbodygyro.mean.z          
* tbodygyrojerk.mean.x     
* tbodygyrojerk.mean.y      
* tbodygyrojerk.mean.z     
* tbodyaccmag.mean          
* tgravityaccmag.mean      
* tbodyaccjerkmag.mean      
* tbodygyromag.mean        
* tbodygyrojerkmag.mean     
* fbodyacc.mean.x          
* fbodyacc.mean.y           
* fbodyacc.mean.z          
* fbodyaccjerk.mean.x      
* fbodyaccjerk.mean.y      
* fbodyaccjerk.mean.z       
* fbodygyro.mean.x         
* fbodygyro.mean.y          
* fbodygyro.mean.z         
* fbodyaccmag.mean          
* fbodybodyaccjerkmag.mean 
* fbodybodygyromag.mean     
* fbodybodygyrojerkmag.mean

These features come from the accelerometer and gyroscope 3-axial raw signals tacc and tgyro. 

Acceleration signal was then separated into body and gravity acceleration signals (fbodyacc and tgravityacc). Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tbodyaccjerk and tbodygyroJerk). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tbodyaccmag, tgravityaccmag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fbodyacc, fbodyaccjerk, fbodygyro, fbodyaccjerkmag, fbodygyromag, fbodygyrojerkmag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  '.xyz' is used to denote 3-axial signals in the X, Y and Z directions.

The set of variables that were estimated from these signals are: 

mean: Mean value
std: Standard deviation

Values in resulting dataset obtained by **getting the mean** of variables for each activity of each individual.