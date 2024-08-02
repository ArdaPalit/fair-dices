library(ggplot2)

roll_dice <- function() {
  mydice <- 1:6
  mydices <- sample(mydice, size = 2, replace = TRUE)
  sum(mydices)
}

roll_dice()
more_dice <- replicate(10000, roll_dice())
qplot(more_dice, binwidth = 1)