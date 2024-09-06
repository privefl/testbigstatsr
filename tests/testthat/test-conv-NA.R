test_that("dbl2int() works", {
  expect_identical(dbl2int(1.2), 1L)
  expect_identical(dbl2int(NA_real_), NA_integer_)
})

test_that("NA conversion to integer work", {
  X <- bigstatsr::FBM(1, 1, type = "integer", init = 7)
  expect_identical(X[1], 7L)
  X[1] <- NA
  expect_identical(X[1], NA_integer_)  # OK
  X[1] <- NA_integer_
  expect_identical(X[1], NA_integer_)  # OK
  X[1] <- NA_real_
  expect_identical(X[1], NA_integer_)  # NOK
  X[1, 1] <- NA_real_
  expect_identical(X[1], NA_integer_)  # NOK
})
