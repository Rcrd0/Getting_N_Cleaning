---
title: "READ_ME"
output: html_document
---
The R script run_analysis.R performs the below mentioned  steps to convert the raw data to tidy data. 

Assumptions
-----------
1. The necessary files are downloaded and already available n the working directory. the test and train tatasets are in their respective folders.
2. The reshape2 package is already installed.

Step 0 : Include necessary packages
-----------------------------------
The script utilizes the melt and decast function from the reshape2 package to reshape the data for the final tidy set.

Step 1 : Read the datasets
--------------------------
This section of the code reads the necessary data files into corresponding data frames. 
Following are the files loaded in this section
1.test/X_test.txt
2.test/Y_test.txt
3.test/subject_test.txt
4.train/X_train.txt
5.train/y_train.txt
6.train/subject_train.txt
7.features.txt
8.activity_labels.txt

#Step 2 : Union the test and train datasets
-------------------------------------------
In this section, we combine the X,Y and Subject datasets from both test and train into their corresponding unioned dataset by using rbind.

#Step 3 : Set column names for the data sets
--------------------------------------------
This sections assigns descriptiove variable names to the combined dataset. The column names for the single variable Y and Subject datasets are directly assigned, whereas the column names for the 561 variables in the X dataset is assigned from the names read from the features.txt file.

#Step 4 : Get only the mean and std variables from the X dataset
----------------------------------------------------------------
Our analysis only requires the mean and std variables. So we create a new X dataset that contains only the required variables. 


#Step 5 : Clean up variable names
---------------------------------
Once we have the dataset with only the required variables, we further clean up the variable names. During the cleanup, we remove the paranthesis ("()") from the column names, replace the "-" with "_" and convert the variable name into lower case.

#Step 6 : Merge the datasets
----------------------------
At this point we have a clean X dataset. So we merge the Y and Subject data sets with the X dataset to create a single complete dataset.

#Step 7 : Apply Activity Names
------------------------------
At this stage, we add the Activity Name to the data set. The activity names are obtained from the file activity_labels.txt and contain the following six values.

LAYING 
SITTING 
STANDING 
WALKING 
WALKING_DOWNSTAIRS 
WALKING_UPSTAIRS

#Step 8 : Create a new tidy data set
-----------------------------------
The processing necessary for the initial dataset is complete at this point. Now we need to create a new dataset that contains the average of all measurements in the initial dataset for each subject and activity. We use a combination of melt and dcast functions here to create our wide tidy data set.

#Step 9 : Write the tidy data to a text file.
--------------------------------------------
As the last step, we write our final data set to a text file using write.table.
