#'================================PYTHAGORAS FUNCTION===============================
#"
#'DISCRIPTION:
#' The square of the hypotenuse (the side opposite the right angle of a
#' trianble, c) is equal to the sum of the squares of the other two sides (a & b).
#' @param a & b
#' @return Length of c
#' @export
#'
#'==================================================================================



##'FUNCTION:
Pythagoras <- function(a, b){
  if ( (class(a) == character) | (class(b) == character)){
    stop("Pythagoras: must have two values for arguments")
  }
  c <- sqrt( a ^ 2 + b ^ 2)
  c
}



##' Commands used:

#' First load the package needed to create a vignette (and tests? TODO: ask for
#' specifics later)
#'  library(devtools)

#' Then enter the commands to get the wanted documents in the package folder.
#'  devtools::use_test("style") # It will prepend the filename with 'test-'
#'  devtools::use_vignette("demo_Pythagoras")
#'  devtools::check()
