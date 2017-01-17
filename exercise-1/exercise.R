# Exercise 1: Creating data frames

# Create a vector of the number of points the Seahawks scored in each game this
# season (google "Seahawks" for the info!)
seahawks.scores <- c(100, 200, 300, 400, 500)

# Create a vector of the number of points the Seahwaks have allowed to be scored
# against them in each game this season
seahawks.against <- c(0, 0, 0, 0, 5265255)

# Combine your two vectors into a dataframe
seahawks.table <- data.frame(scores = seahawks.scores, against = seahawks.against)

# Create a new column "diff" that is the difference in points.
# Hint: recall the syntax for assigning new elements (which in this case will be
# a vector) to a list!
diff <- seahawks.scores - seahawks.against
seahawks.table[['diff']] <- diff

# Create a new column "won" which is TRUE if the Seahawks won
match <- diff
match[seahawks.scores > seahawks.against] <- 'win'
match[seahawks.scores < seahawks.against] <- 'loss'
seahawks.table[['match']] <- match

# Create a vector of the opponent names corresponding to the games played
opponent <- c('a', 'b', 'c', 'd', 'e');

# Assign your dataframe rownames of their opponents
seahawks.table[['opponents']] <- opponent

# View your data frame to see how it has changed!
print(seahawks.table)