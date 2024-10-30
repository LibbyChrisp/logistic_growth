#Script to plot data and model

growth_data <- read.csv("experimentt.csv")

logistic_fun <- function(t) {
  
  N <- (N0*K*exp(r*t))/(K-N0+N0*exp(r*t))
  
  return(N)
  
}

N0 <- 879 #
  
r <- 0.01 #
  
K <- 60000000000 #

ggplot(aes(t, N), data = growth_data) +
  
  geom_function(fun=logistic_fun, colour="red") +
  
  geom_point() + scale_y_continuous(trans='log10')

# Commit and push the changes to your GitHub repo

sink(file = "package-versions.txt")
sessionInfo()
sink()

#The next steps will place the file into my repertoire by putting in my email.

#Type in email where I will commit the files -> run this code below in my terminal

git config --global user.email "elizabeth.chrisp@bnc.ox.ac.uk"




