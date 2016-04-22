context("style")

#' Packages
library(lintr)

#' My lintr test (Ctr shift T):
test_that("Package must pass lintr", {
  lintr::expect_lint_free()
})
