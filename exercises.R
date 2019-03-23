# R Programming Course

dat <- unzip("quiz1_data.zip")
dat <- read.csv("hw1_data.csv")
names(dat)

# Extract the first 2 rows of the data 
# frame and print them to the console. What does the output look like?
dat[1:2,]

# How many observations (i.e. rows) are in this data frame?
nrow(dat)

# Extract the last 2 rows of the data frame and print them to the console. 
# What does the output look like?
dat[152:153,]

# What is the value of Ozone in the 47th row?
dat$Ozone[47]

# How many missing values are in the Ozone column of this data frame?
sum(is.na(dat$Ozone))

# What is the mean of the Ozone column in this dataset? Exclude missing values 
# (coded as NA) from this calculation.
mean(dat$Ozone, na.rm=TRUE)

# Extract the subset of rows of the data frame where Ozone values are above 
# 31 and Temp values are above 90. What is the mean of Solar.R in this subset?
mean(dat[which(dat$Ozone > 31 & dat$Temp > 90), ]$Solar.R)


# What is the mean of "Temp" when "Month" is equal to 6?
mean(dat[which(dat$Month == 6),]$Temp)







