library(tidyverse)
tv_hours_table <- gss_cat %>%
group_by(marital) %>%
   summary(mean_tv_hours=mean(tvhours, na.rm =  TRUE))

write.csv(tv_hours_table,"outputs/TV_hours_by_marital.csv")
