context("pythagoras")

test_that("Pythagoras works", {
  expect_equal(Pythagoras(3, 4), 5)
  expect_error(Pythagoras(),
               c("Pythagoras: must have two values for arguments"))
})
