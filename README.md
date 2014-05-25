README FOR RUN_ANALYSIS CLEANING SCRIPT
========================================================

Script consists of the following important steps:

Loading subject ids
---------------------
We load subject id's from files here

Loading training and testing datasets
--------------------------------------
We load data from files into dataframes with the same names (for both, train and test data sets)
Loading training and testing labels
--------------------------------------
Doing the same thing with testing labels
Renaming features on both
--------------------------
We should read list of 561 feature names from file and set correct searching for needed features (ones that have "std()" or "mean()" in their names)
We use grep function and simple regular expression matching to find the feaures we actually need.
Separating columns we need (via list of features we got on previous step)
-----------------------------------------------
Throw away all the useless (at the moment) columns, using list of the ones we need 
Loading activity labels from file
---------------------------------
Adding labels for each row 
binding columns with "normal" activity names
----------------------------------------------
We need to replace numeric Id's with readable names and we can use  activity_labels.txt
Combining test and training data
----------------------------------
Simply binding two data tables via "rbind" function
Melting and dcasting for getting databy activities and subjects
----------------------------------------------------------------
We use methods from "data.table" library to reshape the date and create new data table, which includes data grouped by activity type and subject id
Changing column names to be more readable
-----------------------------------------
We use "gsub" function to replace some "bad" parts of features names
Write tidy data set into file
-------------------------------
We use tab-delimited file format