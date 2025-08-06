df <- data.frame(
  ID = 1:8,
  Age = c(34, 60, 45, 50, 29, 80, 55, 65),
  SBP = c(120, 140, 135, 150, 110, 140, 120, 125 ),
  cholesterol = c(200,220, 190, 195, 180, 240, 230, 235),
  sex = c("Male","Male","Female","Male","Female","Female","Male","Male")
)

# Filter patients over 45
sub<-df %>% filter(Age > 45)
head(sub)

# Select specific columns
sub2<-df %>% select(ID, SBP)
head(sub2)

# Create a new variable (indicator variable) showing whether cholesterol is above 200
df<-df %>% mutate(chol_bin=ifelse(cholesterol>200,1,0))
nrow(df[df$chol_bin==1,])

# Summarize average cholesterol by sex
df %>% group_by(sex) %>% summarise(mean=mean(cholesterol))

