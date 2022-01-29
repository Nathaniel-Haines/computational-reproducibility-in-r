library(dplyr)
library(ggplot2)

set.seed(43210)

love_for_renv <- rnorm(100, exp(.022*(1:100)), .8)

my_plot <- 
  data.frame(Time = 1:100,
             love_for_renv = love_for_renv) %>%
  ggplot(aes(x = Time, y = love_for_renv)) +
  geom_point() +
  geom_line() +
  ylab("Love for renv") +
  scale_y_continuous(breaks = 1:10, limits = c(0,11)) +
  theme_minimal(base_size = 15) +
  theme(panel.grid = element_blank())

ggsave(my_plot, file = "saved_plot.pdf", unit = "in",
       height = 4, width = 5)