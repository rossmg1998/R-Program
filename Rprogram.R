# "pacman" is for managing add-on packages. 
# It will install packages and then load them.
install.packages("pacman")

# Load the package.
library("pacman")

# If "pacman" is already installed, use the p_load function from "pacman" 
# without actually loading "pacman".
# pacman::p_load(pacman, dplyr, GGally, ggplot2, ggthemes, ggvis, httr, 
#               lubridate, plotly, rio, rmarkdown, shiny, stringr, tidyr)

# Load/unload base packages manually.
library("datasets")


# Clearing Packages

# Clears all add-ons.
p_unload(all)
detach("package:datasets", unload = TRUE)

# Clear the console.
cat("\014")


# R Module
# Unique Requirements:
# Write multiple functions in R that demonstrates some of the following:
#   - Display output to the screen.
#   - Use at least 5 different R datatypes in your program.
#   - Incorporate at least one loop that works with lists or arrays.
#   - Use data frames.


# Display output to the screen.

# Output some text.
"Hello World!"

# Output some numbers.
4
8
12
16

# Output a few simple calculations.
6 + 4
15 - 10

# Output calculations using built-in math functions.
max(20, 30, 10)
min(30, 10, 20)


# Use at least 5 different R datatypes.

# Numeric data type(s)
num <- 3.14
num
class(num) # class() function is used to check the data type of the variable

# Integer data type(s)
int <- 42L # "L" declares this as an integer
int
class(int)

int <- 1:5
int
length(int) # length() function is used to check the length of the data type variable
class(int)

# Character (string) data type(s)
char <- "Eat more chicken!"
char
class(char)

# Logical (boolean) data type(s)
boolean <- TRUE
boolean
class(boolean)

# Complex data type(s)
comp <- 73 + 5i # "i" represents the imaginary component
comp
class(comp)


# Incorporate at least one loop that works with lists or arrays.

games <- list("Chess", "Monopoly", "Battleship", "Uno", "Phase 10")

# Print every item in the list
for (x in games) {
  print(x)
}

# Using a break statement, stop the loop before it has looped through all the items
for (x in games) {
  if (x == "Uno") { # The loop will stop at "Uno"
    break
  }
  print(x)
}

# Using a next statement, skip an iteration without terminating the loop
for (x in games) {
  if (x == "Battleship") { # The loop will skip "Battleship" and continue to loop
    next
  }
  print(x)
}


# Use data frames.

# Create a data frame
NSMBWii_Enemies <- data.frame (
  Enemy_Name = c("Goomba", "Cheep Cheep", "Piranha Plant"),
  First_Appearance = c("W 1-1", "W 1-4", "W 1-2"),
  Last_Appearance = c("W 9-8", "W 8-4", "W 9-7")
)

# Print the data frame
NSMBWii_Enemies

# Add a new row (using the rbind plug-in)
New_Row_Enemy <- rbind(NSMBWii_Enemies, c("Swoop", "W 5-2", "W 6-6"))

# Print the new row
New_Row_Enemy

# Add a new column (using the cbind plug-in)
New_Col_Enemy <- cbind(NSMBWii_Enemies, Habitat = c("Grassland", "Water", "Various"))

# Print the new column
New_Col_Enemy


# Stretch Challenge: Incorporate a CSV file

# Check directory
getwd()

# Import .csv file to the Global Environment
# Notes:
#   - Use read.csv to read the CSV file in R
#   - header = TRUE tells the computer that the first row is the header
#   - sep = "," because the data is saved as a .csv (Comma Separated Value) file
hp_books <- read.csv("hp_books.csv", header = TRUE, sep = ",")
hp_books

