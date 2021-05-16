




#function definition
fizz_buzz <- function(x) {

  # this is checking to see if you've passed in the correct type of argument
  check_fizz_buzz_arg(x)

  # this is the "engine" behind 'fizz_buzz()'
  x[as.numeric(x)%%3==0]
}
