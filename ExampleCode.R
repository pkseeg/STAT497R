# Read in data
womenstennis <- read.csv("WTennisStats.csv",header=TRUE,stringsAsFactors = TRUE)
tail(womenstennis)
dim(womenstennis)
colnames(womenstennis)

# How to select just forehand winners
forewinners <- womenstennis[(womenstennis$ForeBack=='F'&womenstennis$PointResult=='W'),]
tail(forewinners)
dim(forewinners)

boxplot(forewinners$PlayerGames,forewinners$OpponentGames)

# Why would our player have more than 6 games? We should probably fix that in the dataset.

# Good luck everyone!