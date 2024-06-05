df<- read.csv("https://public.tableau.com/app/sample-data/HollywoodsMostProfitableStories.csv")
View(df)
#Load library: 

install.packages("tidyverse") 

#Import library 

library(tidyverse)

# Check data types: 

str(df)

# Check for missing values: 

colSums(is.na(df))
#Drop missing values 

df <- df%>%drop_na()
# check to make sure that the rows have been removed 

colSums(is.na(df))

#Summary Statistics:
summary(df)

#scatterplot 
ggplot(df, aes(x=Lead.Studio, y=Rotten.Tomatoes..)) + geom_point()+ scale_y_continuous(labels = scales::comma)+coord_cartesian(ylim = c(0, 110))+theme(axis.text.x = element_text(angle = 90))

#bar chart 
ggplot(df, aes(x=Year)) + geom_bar()

#Export clean data 
write.csv(df, "clean_df.csv")