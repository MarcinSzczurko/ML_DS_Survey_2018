# Libraries
library(tidyverse)

# Read files
Schema <- read.csv("C:/Users/marci/Desktop/GitHub/ML_DS_Survey_2018/multipleChoiceResponses.csv", header = TRUE)
SurveySchema <- read.csv("C:/Users/marci/Desktop/GitHub/ML_DS_Survey_2018/SurveySchema.csv", header = FALSE)

# Preview files
head(Schema)
head(SurveySchema)

glimpse(Schema)

# Clean Schema
Schema[,6] <- gsub("â€™", "'", Schema[,6])
View(Schema)

## Analysis without TEXT answer
col_TEXT <- 
  Schema %>%
  colnames() %>%
  str_detect("TEXT") %>%
  which()

Schema <- View(Schema[-1,-col_TEXT])

# View(
#   Schema %>%
#     colnames() %in% c("Q1_OTHER_TEXT","Q6_OTHER_TEXT") %>%
#     which()
#   #select(contains("TEXT")) %>%
#   #colnames()
# )
# which(colnames(Schema) %in% c("Q1_OTHER_TEXT","Q6_OTHER_TEXT"))


# Functions
## Single chose recognition
View(Schema[1,])

