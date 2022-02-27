# HW07 
#Packages 
library(lubridate)
library(stringr)
library(dplyr)

#Datafile 
dat <- read.csv("SP2022.csv")

#Pipeline operation 
dat1 <- dat %>%
  mutate(Size <- case_when(Reg == "small" ~ Reg < 10,
                   Reg == "medium" ~ 10 <= Reg <= 22,
                   Reg == "large" ~ Reg > 22 %>%
          select(dat$Reg == Size)
          mutate_at(vars(Room, RoomType, Days, StartTime, EndTime, Course, Sec, Instructor, Email, Seats),
                    list(~ ifelse( . == 0, NA, . ))) %>%
          str_split_fixed(dat$Instructor, ",", 2),
          Last_name <- str_split_fixed(dat$Instructor, ",", 2) [, 1],
          First_name <- str_split_fixed(dat$Instructor, ",", 2) [, 2] 
  ))
            
                     
                
          
          
         
         
         
                   
