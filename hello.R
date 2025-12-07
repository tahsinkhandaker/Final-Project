library(ggplot2)
library(readr)

Electric_Vehicle_Data <- read_csv("C:/Users/tahsi/Downloads/Electric_Vehicle_Population_Data.csv")
View(Electric_Vehicle_Data)

Electric_Vehicle_Range <- ggplot(Electric_Vehicle_Data, aes(x = Electric_Vehicle_Data$`Electric Vehicle Type`, y = Electric_Vehicle_Data$`Electric Range`, fill = Electric_Vehicle_Data$`Electric Vehicle Type`)) + geom_col() + labs(x = "Electric Vehicle Type", y = "Electric Range") + ggtitle("Electric Vehicles by Range")
Electric_Vehicle_Range + guides(fill = guide_legend(title = "Electric Vehicle type"))

Clean_fuel <- ggplot(Electric_Vehicle_Data, aes(x = Electric_Vehicle_Data$`Clean Alternative Fuel Vehicle (CAFV) Eligibility`, fill = Electric_Vehicle_Data$`Clean Alternative Fuel Vehicle (CAFV) Eligibility`)) + geom_bar() + labs(x = "Clean Alternative Fuel Vehicle (CAFV) Elgibility") + ggtitle("Clean Alternative Fuel Vehicle by Count")
Clean_fuel + guides(fill = guide_legend(title = "Clean Alternative Fuel Vehicle Eligbility"))

Electric_Range <- ggplot(Electric_Vehicle_Data, aes(y = Electric_Vehicle_Data$Make, x = Electric_Vehicle_Data$`Electric Range`)) + geom_col() + ggtitle("Electric Range by Make") + labs(y = "Make", x = "Electric Range")
Electric_Range

