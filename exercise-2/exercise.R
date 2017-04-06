# Exercise 2: writing and executing functions (II)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"

CompareLength <- function(vec1, vec2){
  return (length(vec1) - length(vec2))
}

# Pass two vectors of different length to your `CompareLength` function
vector1 <- c("1", "2")
vector2 <- c("3", "4", "5")
CompareLength(vector1, vector2)

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"

DescribeDifference <- function(vec1, vec2){
  len <- CompareLength(vec1, vec2)
  if(len > 0){
    statement <- paste(deparse(substitute(vec1)), "is longer by", len, "elements", sep=" ")
  } else if(len < 0){
    statement <- paste(deparse(substitute(vec2)), "is longer by", -len, "elements", sep=" ")
  }
  return (statement)
}

# Pass two vectors to your `DescribeDifference` function

DescribeDifference(vector1, vector2)

### Bonus ###

# Rewrite your `DescribeDifference` function to tell you the name of the vector which is longer