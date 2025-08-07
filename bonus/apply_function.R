### apply

username<-"YOUR USERNAME HERE"
path<-paste0("/mnt/work/workbench/",username,"/scratch/",username,"/data/")
path2<-paste0(path,"inflammation-01.csv")

dat<-read.csv(path2,header=FALSE)

#Each row is a patient and each column is a time point. Inflammation measurements were taken over 40 days.

# What if we need the maximum inflammation for all patients, or the average for each day? 
  
# `apply` allows us to repeat a function on all of the rows (MARGIN = 1) or columns (MARGIN = 2) of a data frame.

#To obtain the average inflammation of each patient we will need to calculate the mean of all of the rows (MARGIN = 1) of the data frame.
avg_patient_inflammation <- apply(dat, 1, mean)

#To obtain the average inflammation of each day we will need to calculate the mean of all of the columns (MARGIN = 2) of the data frame.
avg_day_inflammation <- apply(dat, 2, mean)

```
