### Challenge

#Task: Given a data frame of patients' inflammatory measures over time, create a plot that shows these measurements over time, stratified by patient
#	0. Read in the data with `read_csv`
#	1. Use `mutate()` to add a sample ID column
#	2. Turn the data from wide to long with `pivot_longer()`
#	3. Turn the column that represents time points into numeric
#	4. Create a line plot `ggplot2`; inflammation should be on the y-axis, timepoint should be on the x-axis. Use `facet_wrap()` to separate by sample ID.
#	5. Export the plot with `ggsave()`


#define the path to the data
username<-"YOUR USERNAME HERE"
path<-paste0("/mnt/work/workbench/",username,"/scratch/",username,"/data/")
path2<-paste0(path,"inflammation-01.csv")

#read in the inflammation data as a tibble
df<-read_csv(path2,col_names=FALSE)

# use mutate to create a sample ID column
df<-df %>% mutate(ID=row.names(df))
df$ID

# use pivot_longer to restructure the data
longdf<-df %>% pivot_longer(cols=X1:X40,
                     names_to="timepoint",
                     values_to="inflammation")


# turn the timepoint column from character to numeric
longdf <- longdf %>% mutate(timepoint_num=as.numeric(sub("^X", "", timepoint)))

#create a plot with one line per sample
g<-ggplot(longdf,aes(x=timepoint_num,y=inflammation)) + geom_line() + facet_wrap(~ID)
g

#export the plot with ggsave()

#set a path to save the file to
username<-"YOUR USERNAME HERE"
output_path<-paste0("/mnt/work/workbench/",username,"/scratch/",username,"/inflammation.png")
ggsave(filename = output_path, plot = g, width = 12, height = 12, dpi = 300, units = "cm")

