## ------------------------------------------------------------------------
primes_in <- function(x, y){
  # Checking wheter the input is all right.
  if ((round(x) != x )|( round(y) != y)){
    stop("This doesn't work. Numbers should be integers.")
  }
  if (y < x){
    stop("Error, the first number should be lower than the second.")
  }
  if ((x < 0)|(y < 0)){
    stop("Error, only positive numbers can be primes!")
  }

  # The function itself.
  # First we establish what the sequence is.
  sequence <- c(x:y)
  # We make an empty list to put the primes in. These are used to evaluate what other numbers are primes as well.
  primes_lower_than_Y <- c()
  # We don't start with 1 because everything can be divided by it.
  for (n in c(2:y)){
    # Counter to count the number of numbers a number can be divided by.
    counter <- 0
    # So here, if a number can be divided by a number in primes_lower_than_Y, it isn't put in primes_lower_than_y, if it can't, it is.
    for (p in primes_lower_than_Y) {
      if ((n %% p) == 0) {
        counter <- (counter + 1)
      }
    }
    # Counter == 0 if the number can't be divided by anything.
    if (counter == 0) {
      primes_lower_than_Y <-append(primes_lower_than_Y, n)
    }
  }
  # Here we make sure only those numbers found in the range we put in are shown.
  primes_in_range_XY <- primes_lower_than_Y[primes_lower_than_Y %in% sequence]
  # Just to make sure that, in some cases, 1 isn't shown as though it were a prime.
  if (y < 2){
    primes_in_range_XY <- c()
  }
  return(primes_in_range_XY)
}


## ------------------------------------------------------------------------
primes_in(0, 1)

primes_in(1, 7)

primes_in(40, 120)

# Wrong input (negative values, non-integers, a y value higher than the x value) Will give error messages.


