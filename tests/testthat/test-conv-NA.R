test_that("Downcast NA work", {
  X <- bigstatsr::FBM(1, 1, type = "integer", init = 7)
  expect_identical(X[1], 7L)
  X[1] <- NA
  expect_identical(X[1], NA_integer_)
  X[1] <- NA_integer_
  expect_identical(X[1], NA_integer_)
  X[1] <- NA_real_
  expect_identical(X[1], NA_integer_)
  X[1, 1] <- NA_real_
  expect_identical(X[1], NA_integer_)
})
