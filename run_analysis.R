#Step 0 : Include the necessary packages.
library(reshape2)

#Step 1 : Read the data sets
d_X_test <- read.table("test/X_test.txt")
d_Y_test <- read.table("test/Y_test.txt")
d_S_test <- read.table("test/subject_test.txt")
d_X_train <- read.table("train/X_train.txt")
d_Y_train <- read.table("train/y_train.txt")
d_S_train <- read.table("train/subject_train.txt")
f_names <- read.table("features.txt")
activity_names <- read.table("activity_labels.txt")

#Step 2 : Union the test and train datasets
d_X_Combined <- rbind(d_X_test,d_X_train)
d_Y_Combined <- rbind(d_Y_test,d_Y_train)
d_S_Combined <- rbind(d_S_test,d_S_train)

#Step 3 : Set column names for the data sets
names(d_Y_Combined) <- "Activity_Number"
names(d_S_Combined) <- "Subject"
names(d_X_Combined) <- f_names[,2]

#Step 4 : Get only the mean and std variables from the X dataset
xcols <- f_names[,2]
xmeancols <- grep("mean",xcols)
xstdcols <- grep("std",xcols)
d_X_Projected <- d_X_Combined[,c(xmeancols,xstdcols)]

#Step 5 : Clean up variable names
pcols <-names(d_X_Projected)
pcols <-gsub("()","",pcols,fixed=TRUE)
pcols <-gsub("-","_",pcols)
pcols <-tolower(pcols)
names(d_X_Projected) <- pcols

#Step 6 : Merge the datasets
d_X_Projected <- cbind(d_X_Projected,d_Y_Combined)
d_X_Projected <- cbind(d_X_Projected,d_S_Combined)

#Step 7 : Apply Activity Names
names(activity_names) <- c("Activity_Number","Activity_Name")
d_X_Projected <- merge(d_X_Projected,activity_names,by.x="Activity_Number",by.y = "Activity_Number")

#Step 8 : Create a new tidy data set
melted_data <- melt(d_X_Projected,id=c("Subject","Activity_Name"),measure.vars = c(2:80))
tidy_data <- dcast(melted_data,Subject+Activity_Name ~ variable, mean)

#Step 9 : Write the tidy data to a text file.
write.table(tidy_data,"tidy_data.txt",row.name=FALSE)

#Step 10 : Woohoo. Time to go get a beer!!! :)




