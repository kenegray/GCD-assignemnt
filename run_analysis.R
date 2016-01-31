
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", "dataset.zip")

#start reading data
#get col names
features<- read.csv("features.txt",header = FALSE,sep = "")

#get x data
xtestdata<- read.table("x_test.txt",header=FALSE,sep = "")
xtraindata<- read.table("x_train.txt",header=FALSE,sep = "")

#merge x data
xtestandtrain<- rbind(xtestdata,xtraindata)
#set names for cols
names(xtestandtrain)<- features$V2
#get meand and std column names
mean_std_cols<- grep("-mean\\(\\)|-std\\(\\)",features$V2)
#extract all the non-mean std cols
x_full_mean_std<- xtestandtrain[,mean_std_cols]
#set the reduced data set's names
names(x_full_mean_std)<- features[mean_std_cols,2]

#clean up column names
names(x_full_mean_std)<- tolower(names(x_full_mean_std))
names(x_full_mean_std)<- gsub("\\(|\\)","",names(x_full_mean_std))



#get y data
ytestdata<- read.table("y_test.txt",header=FALSE,sep = "")
ytraindata<- read.table("y_train.txt",header=FALSE,sep = "")

#merge x data
ytestandtrain<- rbind(ytestdata,ytraindata)

#get activity information
activity<- read.csv("activity_labels.txt",header = FALSE,sep = "")
activity[,2]<- tolower(activity[,2])

#get activity information into Y data
#create 2nd variable
ytestandtrain<- cbind(ytestandtrain,c(" "))
#update the new colum with the 'joined' value from activity
ytestandtrain[,2]<- activity[ytestandtrain[,1],2]
names(ytestandtrain)<- c("activity_id","activity")

#get subject data
stestdata<- read.table("subject_test.txt",header=FALSE,sep = "")
straindata<- read.table("subject_train.txt",header=FALSE,sep = "")
stestandtrain<- rbind(stestdata,straindata)
names(stestandtrain)<- "subject"

#merge it all together
merged_xys_data<- cbind(stestandtrain,ytestandtrain,x_full_mean_std)
for(x in 4:69){
  means<-with(merged_xys_data, tapply(merged_xys_data[,x],merged_xys_data$subject,mean,na.rm=T))
  if (x==4){
    fullmeans<- means
  }else{
    fullmeans<- rbind(fullmeans,means)
  }
  
}
write.table(means,"final_dataset.txt",row.name=FALSE)
