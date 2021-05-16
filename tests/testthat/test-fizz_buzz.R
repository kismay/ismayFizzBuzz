
# this is making sure we're getting the messages we expect when an incorrect
# argument is passed into the function
test_that("non-positive integer argument produced message", {

  expect_error(fizz_buzz(mtcars))

  expect_error(fizz_buzz(as.matrix(1:17)))

  expect_error(fizz_buzz(list(a = 1, b = mtcars, c = "flan")))

  expect_message(fizz_buzz(TRUE))

  expect_error(fizz_buzz())
  expect_error(fizz_buzz(2, 4))

  expect_message(fizz_buzz("apple"))
  expect_equal(fizz_buzz("apple"), "apple")

  expect_message(fizz_buzz(3.5))
  expect_equal(fizz_buzz(3.5), 3.5)

  expect_message(fizz_buzz(-3))
  expect_equal(fizz_buzz(-3), -3)

  expect_message(fizz_buzz(-3.5))
  expect_equal(fizz_buzz(-3.5), -3.5)

  expect_message(fizz_buzz(3))

  expect_message(fizz_buzz(0))

})

# this is making sure the function is giving the correct output
test_that("function returns expected results", {

  expect_equal(fizz_buzz(3), "Fizz")
  expect_equal(fizz_buzz(3L), "Fizz")
  expect_equal(fizz_buzz(5), "Buzz")
  expect_equal(fizz_buzz(6), "Fizz")
  expect_equal(fizz_buzz(9), "Fizz")
  expect_equal(fizz_buzz(10), "Buzz")
  expect_equal(fizz_buzz(12), "Fizz")
  expect_equal(fizz_buzz(15), "FizzBuzz")
  expect_equal(fizz_buzz(30), "FizzBuzz")
  expect_equal(fizz_buzz(4), 4)

})
