#' FizzBuzz Game
#' @description
#'
#' If x is a positive integer (i.e., greater than 0) and:
#' divisible by 3, return the string 'Fizz'
#' divisible by 5, return the string 'Buzz'
#' divisible by both 3 and 5, return the string 'FizzBuzz'.
#' If x doesn't satisfy any of the above conditions, simply return x.
#'
#' @param x A positive integer
#'
#' @return "Fizz", "Buzz", "FizzBuzz", or the value of `x` based on description
#' @export
#'
#' @examples
#'
#' # divisible by 3, output "Fizz"
#' fizz_buzz(21L)
#'
#' # divisible by 5, output "Buzz"
#' fizz_buzz(35L)
#'
#' # divisible by 3 and 5, output "FizzBuzz"
#' fizz_buzz(60L)
#'
#' # divisible neither 3 nor 5, output 41
#' fizz_buzz(41L)
#'
#'
# function definition
fizz_buzz <- function(x) {

  # this is checking to see if you've passed in the correct number of arguments
  if (nargs() != 1L) {
    stop(
      "There can only be one argument in this function. Please input only one
         positive integer argument."
    )
  }

  # this is checking to see if you've passed in the correct type of argument
  checked_x <- check_fizz_buzz_arg(x)

  if (is.integer(checked_x) && (checked_x > 0)) {
    x <- checked_x
  } else {
    return(checked_x)
  }

  # this is the "engine" behind 'fizz_buzz()'
  if (x %% 3 == 0 && x %% 5 == 0) {"FizzBuzz"}
  else if ((x %% 3 == 0) && (x %% 5 != 0)) {"Fizz"}
  else if ((x %% 3 != 0) && (x %% 5 == 0)) {"Buzz"}
  else {x}
}

# this is checking the argument trying to be passed into the function
# this also returns a helpful message if an incorrect argument is passed in
check_fizz_buzz_arg <- function(x){

  if ("logical" %in% class(x)) {
    message(
      paste(
        "It looks like you've entered a `TRUE` or `FALSE` for argument `x`;",
        "however the `x` argument must be a positive integer.",
        "Returning the `x` value entered."
      )
    )
  }

  if (length(x) != 1) {
    stop(
      "This function only accepts an argument of length 1."
    )
  }
  if ("character" %in% class(x)) {
    message(
      paste(
        "It looks like you've entered a string for argument `x`; however the",
        "`x` argument must be a positive integer.",
        "Returning the `x` value entered."
      )
    )
  }

  if ( ("numeric" %in% class(x)) && (x <= 0) ||
       ("integer" %in% class(x)) && (x <= 0)) {
    message(
      paste(
        "It looks like you've entered a non-positive number; however the",
        "`x` argument must be a positive integer.",
        "Returning the `x` value entered."
      )
    )
  }

  if ( ("numeric" %in% class(x)) && (x %% 1 != 0)) {
    message(
      paste(
        "It looks like you've entered a non-whole number; however the",
        "`x` argument must be a positive integer.",
        "Returning the `x` value entered."
      )
    )
  }

  if ( ("numeric" %in% class(x)) && (x %% 1 == 0)) {
    x <- as.integer(x)
    message(
      paste(
        "FYI you've entered a whole number numeric `x` but this function",
        "expects a positive integer. We'll treat the input as an integer",
        "in R for this function."
      )
    )
  }


  # returns x
  x
}
