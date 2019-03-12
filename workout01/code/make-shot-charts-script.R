# title: make-shot-charts-script.R
# author: Yin Li
# inputs:
# outputs:

library(dplyr)
library(ggplot2)
library(jpeg)
library(grid)
shots_data <- read.csv(file = "data/shots-data.csv")
klay_scatterplot <- ggplot(data = filter(shots_data, name == "Klay Thompson")) +
  geom_point(aes(x = x, y = y, color = shot_made_flag))
court_file <- "images/nba-court.jpg"
court_image <- rasterGrob(
  readJPEG(court_file),
  width = unit(1, "npc"),
  height = unit(1, "npc"))

klay_shot_chart <- ggplot(data = filter(shots_data, name == "Klay Thompson"))  +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Klay Thompson (2016 season)') +
  theme_minimal()+
  ggsave("images/klay-thompson-shot-chart.pdf", width = 6.5,  height = 5)

iguodala_shot_chart <- ggplot(data = filter(shots_data, name == "Andre Iguodala"))  +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Andre Iguodala (2016 season)') +
  theme_minimal()+
  ggsave("images/andre-iguodala-shot-chart.pdf", width = 6.5,  height = 5)

green_shot_chart <- ggplot(data = filter(shots_data, name == "Draymond Green"))  +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Draymond Green (2016 season)') +
  theme_minimal()+
  ggsave("images/draymond-green-shot-chart.pdf", width = 6.5,  height = 5)

durant_shot_chart <- ggplot(data = filter(shots_data, name == "Kevin Durant"))  +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Kevin Durant (2016 season)') +
  theme_minimal()+
  ggsave("images/kevin-durant-shot-chart.pdf", width = 6.5,  height = 5)

curry_shot_chart <- ggplot(data = filter(shots_data, name == "Stephen Curry"))  +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Stephen Curry (2016 season)') +
  theme_minimal()+
  ggsave("images/stephen-curry-shot-chart.pdf", width = 6.5,  height = 5)

gsw_shot_chart <- ggplot(data = shots_data)  +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: GSW (2016 season)') +
  theme_minimal()+
  facet_wrap(~name)+
  ggsave("images/gsw-shot-charts.pdf", width = 8,  height = 7)

gsw_shot_chart <- ggplot(data = shots_data)  +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: GSW (2016 season)') +
  theme_minimal()+
  facet_wrap(~name)+
  ggsave("images/gsw-shot-charts.png", width = 8,  height = 7, units = "in")