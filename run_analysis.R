#downloading and unzipping the file
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", destfile = "C:/Users/ishan/Desktop/semester 3/coursera/project.zip")
unzip("./project.zip")

#reading the features into dataset
features<- read.table("./UCI HAR Dataset/features.txt")
colnames(features)<-c("id","features")
features[,2]<-as.character(features[,2])

#reading X_training and X_test data
X_train<- read.table("./UCI HAR Dataset/train/X_train.txt")
colnames(X_train)<-features$features
X_test<- read.table("./UCI HAR Dataset/test/X_test.txt")
colnames(X_test)<-features$features

#reading Y_training and test data
y_test<- read.table("./UCI HAR Dataset/test/y_test.txt")
y_train<- read.table("./UCI HAR Dataset/train/y_train.txt")

#reading the training and test subjects
subject_train<- read.table("./UCI HAR Dataset/train/subject_train.txt")
subject_test<- read.table("./UCI HAR Dataset/test/subject_test.txt")

#cobining training, testing and subjects data
X_set<-rbind(X_train,X_test)
Y_set<-rbind(y_train,y_test)
subject_set<-rbind(subject_train,subject_test)

#assigning descriptive colnames
colnames(subject_set)<-"Subjects"
colnames(Y_set)<- "test labels"
merged_df<-cbind(subject_set,Y_set,X_set)

#extracting only mean and standard dev. measurements
columns_needed<-grep(".*mean.*|.*std.*", names(merged_df))
tidy_df<-merged_df[,c(1,2,columns_needed)]
View(tidy_df)

#reading activity file and combining it to the main dataset
activity<-read.table("./UCI HAR Dataset/activity_labels.txt")
activity[,2]<-as.character(activity[,2])
colnames(activity)<-c("id","labels")
tidy_df$`test labels`<-factor(tidy_df$`test labels`, levels = activity$id,labels = activity$labels)
colnames(tidy_df)[2]<-"Activity"

#appropriately labeling the data set with descriptive variable names
names(tidy_df)<-gsub("()","",names(tidy_df),fixed = TRUE)
names(tidy_df)<-gsub("Acc","Accelerometer",names(tidy_df))
names(tidy_df)<-gsub("Gyro","Gyroscope",names(tidy_df))
names(tidy_df)<-gsub("-mean","Mean",names(tidy_df))
names(tidy_df)<-gsub("-std","Std",names(tidy_df))
names(tidy_df)<-gsub("BodyBody","Body",names(tidy_df))
names(tidy_df)<-gsub("Mag","Magnitude",names(tidy_df))
names(tidy_df)<-gsub("^t","Time",names(tidy_df))
names(tidy_df)<-gsub("^f|Freq","Frequency",names(tidy_df))

#creating independent tidy data set with the average of each variable for each activity and each subject.
step5_df<-tidy_df %>% group_by(Subjects,Activity) %>% summarise_all(mean)
write.table(step5_df, "tidy_df.txt", row.name=FALSE)