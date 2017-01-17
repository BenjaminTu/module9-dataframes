# Exercise 1: Creating data frames

# Create a vector of the number of points the Seahawks scored in each game this
# season (google "Seahawks" for the info!)
	seahawks.points <- c(12, 3, 37 ,27, 26, 6, 20, 31, 31, 26, 5, 40, 10, 24 ,31, 25)

# Create a vector of the number of points the Seahwaks have allowed to be scored
# against them in each game this season
	seahawks.opponent.points <- c(10, 9 ,18, 17, 24, 6, 25, 25, 24, 15, 5, 7, 38, 3, 31, 23)

# Combine your two vectors into a dataframe
	seahawks.table <- data.frame(seahawks.points, seahawks.opponent.points)

# Create a new column "diff" that is the difference in points.
# Hint: recall the syntax for assigning new elements (which in this case will be
# a vector) to a list!
	seahawks.table$diff <- abs(seahawks.points - seahawks.opponent.points) 

# Create a new column "won" which is TRUE if the Seahawks won
	seahawks.table$won <- seahawks.points > seahawks.opponent.points

# Create a vector of the opponent names corresponding to the games played
	seahawks.opponent <- c("dophins", "rams", "49ers", "jets", "falcons", "cardinals", "saints", "bills", 
		"patriots", "eagles", "buccaneers", "panthers", "packers", "rams", "cardinals", "49ers")

# Assign your dataframe rownames of their opponents
	seahawks.table$opponent <- seahawks.opponent
	seahawks.table$stringsAsFactors = FALSE

# View your data frame to see how it has changed!
	View(seahawks.table)