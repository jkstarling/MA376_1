library(tidyverse)
library(table1)
library(nflfastR)

data <- load_pbp(2021)
write_csv(data, "pbp_2021.csv")

field_goal <- data %>% filter(is.na(field_goal_result)!=T) 
write_csv(field_goal, "fg_2021.csv")

