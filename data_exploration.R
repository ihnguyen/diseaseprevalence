library(pacman)
p_load(tidyverse, readxl, skimr)

age <- read_excel("age.xlsx")
income <- read_excel("income.xlsx")
regions <- read_excel("regions.xlsx")

age <- age |> 
  mutate(upper = as.numeric(upper),
         lower = as.numeric(lower),
         prev = as.numeric(prev),
         level = as.numeric(level),
         metric_id = as.numeric(metric_id),
         year_id = as.numeric(year_id),
         sex_id = as.numeric(sex_id),
         age_group_id = as.numeric(age_group_id),
         location_id = as.numeric(location_id)
         )

income <- income |> 
  mutate(metric_id = as.numeric(metric_id))

skim(age)
skim(income)
skim(regions)
