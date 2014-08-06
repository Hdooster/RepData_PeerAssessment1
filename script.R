activity <- read.csv("RepData_PeerAssessment1/activity.csv",header=T, sep=",", quote="\"",stringsAsFactors = FALSE)

names <- colnames(activity)
dates<-as.data.frame(strptime(activity$date, "%Y-%m-%d",tz="")
activity<-cbind(activity[,1],dates,activity[,3])

colnames(activity) <- names

g_activity <- activity[!is.na(activity$steps),]

#number of steps daily

hist(g_activity[,c(3,1)])
