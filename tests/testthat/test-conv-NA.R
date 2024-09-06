test_that("Downcast warnings work", {
  X <- bigstatsr::FBM(1, 1, type = "integer", init = 7)
  X[1, 1] <- NA_real_
  expect_identical(X[1], NA_integer_)
  X[1] <- NA_real_
  expect_identical(X[1], NA_integer_)
})
