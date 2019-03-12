# title: make-shots-data-script.R
# description: to get data for shots made by each player
# inputs: raw data downloaded from github course websites
# outputs: combined dataset "shots-data.csv", summaries for each player and combined data

library(dplyr)

#Read csv data
curry <- read.csv("data/stephen-curry.csv", stringsAsFactors = FALSE)
iguodala <- read.csv("data/andre-iguodala.csv", stringsAsFactors = FALSE)
green <- read.csv("data/draymond-green.csv",stringsAsFactors = FALSE)
durant <- read.csv("data/kevin-durant.csv",stringsAsFactors = FALSE)
thompson <- read.csv("data/klay-thompson.csv",stringsAsFactors = FALSE)

#Add names
iguodala1 <- cbind( name = "Andre Iguodala", iguodala )
green1 <- cbind( name = "Graymond Green", green )
durant1 <- cbind( name = "Kevin Durant", durant )
thompson1 <- cbind( name = "Klay Thompson", thompson )
curry1 <- cbind( name = "Stephen Curry", curry )

#Recode shot_made_flag
curry1$shot_made_flag[curry1$shot_made_flag == "n"] <- "shot_no"
curry1$shot_made_flag[curry1$shot_made_flag == "y"] <- "shot_yes"
iguodala1$shot_made_flag[iguodala1$shot_made_flag == "n"] <- "shot_no"
iguodala1$shot_made_flag[iguodala1$shot_made_flag == "y"] <- "shot_yes"
green1$shot_made_flag[green1$shot_made_flag == "n"] <- "shot_no"
green1$shot_made_flag[green1$shot_made_flag == "y"] <- "shot_yes"
durant1$shot_made_flag[durant1$shot_made_flag == "n"] <- "shot_no"
durant1$shot_made_flag[durant1$shot_made_flag == "y"] <- "shot_yes"
thompson1$shot_made_flag[thompson1$shot_made_flag == "n"] <- "shot_no"
thompson1$shot_made_flag[thompson1$shot_made_flag == "y"] <- "shot_yes"

#Calculate the time (minute) when the shot was made
curry2 <- mutate(curry1, minute = period * 12 - minutes_remaining)
iguodala2 <- mutate(iguodala1, minute = period * 12 - minutes_remaining)
green2 <- mutate(green1, minute = period * 12 - minutes_remaining)
durant2 <- mutate(durant1, minute = period * 12 - minutes_remaining)
thompson2 <- mutate(thompson1, minute = period * 12 - minutes_remaining)

#Get summaries for each player
sink(file = 'output/andre-iguodala-summary.txt')
summary(iguodala2)
sink(file = 'output/draymond-green-summary.txt')
summary(green2)
sink(file = 'output/kevin-durant-summary.txt')
summary(durant2)
sink(file = 'output/klay-thompson-summary.txt')
summary(thompson2)
sink(file = 'output/stephen-curry-summary.txt')
summary(curry2)

#Stack tables into one csv file
shots_data <- rbind(iguodala2, green2, durant2, thompson2, curry2)

#Export new combined csv file.
write.csv(
  x = shots_data,
  file = 'data/shots-data.csv'
)

#Get summary of the combined csv file
sink(file = 'output/shots-data-summary.txt')
summary(shots_data)