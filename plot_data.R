#Script to plot the logistic growth data

growth_data <- read.csv("experimentt.csv")

install.packages("ggplot2")

library(ggplot2)

ggplot(aes(t,N), data = growth_data) +
  geom_point() +
  xlab("Time") +
  ylab("Population size") +
  theme_bw()

ggplot(aes(t, N), data = growth_data) +
  
  geom_point() +
  
  xlab("Time") +
  
  ylab("log Population size") +
  
  scale_y_continuous(trans='log10')
