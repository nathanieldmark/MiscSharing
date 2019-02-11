# Nathaniel Mark
# R Code for pulling Census Data: 

#Libraries
library(data.table)
library(cancensus)

# Assigning API and cache path: (You will need to fill these in with appropriate values to use.)
options(cancensus.api_key = "Your API Key")
options(cancensus.cache_path = 'Your Cache')

## Loading CSV File of my chosen variables (done by my TA):

githubfilename <- 'https://raw.github.com/nathanieldmark/MiscSharing/master/Possible.Variables.06.uniq.csv'
Vectors.Data.06 <- read.csv(githubfilename)
githubfilename <- 'https://raw.github.com/nathanieldmark/MiscSharing/master/Possible.Variables.11.uniq.csv'
Vectors.Data.11 <- data.table(read.csv(githubfilename))
githubfilename <- 'https://raw.github.com/nathanieldmark/MiscSharing/master/Possible.Variables.16.uniq.csv'
Vectors.Data.16 <- data.table(read.csv(githubfilename))


## Code to download relevant data using the API tool: 
CSD.Population.06 <- get_census(dataset = "CA06", 
                                level = "CSD",
                                regions = list(PR = c("35")),  
                                vectors = as.character(Vectors.Data.06$vector) 
)

CSD.Population.11 <- get_census(dataset = "CA11", 
                                level = "CSD",
                                regions = list(PR = c("35")),  
                                vectors = as.character(Vectors.Data.11$vector) 
)

CSD.Population.16 <- get_census(dataset = "CA16", 
                                level = "CSD",
                                regions = list(PR = c("35")),  
                                vectors = as.character(Vectors.Data.16$Vector) 
)
