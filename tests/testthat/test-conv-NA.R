test_that("dbl2int() works", {
  expect_identical(dbl2int(1.2), rep(1L, 4))
  expect_identical(dbl2int(NA_real_), rep(NA_integer_, 4))
})

test_that("NA conversion to integer work with FBMs", {
  X <- bigstatsr::FBM(1, 1, type = "integer", init = 7)
  expect_identical(X[1], 7L)
  X[1] <- NA
  expect_identical(X[1], NA_integer_)  # OK
  X[1] <- NA_integer_
  expect_identical(readBin(X$bk, 1L), NA_integer_)
  expect_identical(X[1], NA_integer_)  # OK
  X[1] <- NA_real_
  expect_identical(readBin(X$bk, 1L), NA_integer_)
  expect_identical(X[1], NA_integer_)  # NOK
  X[1, 1] <- NA_real_
  expect_identical(readBin(X$bk, 1L), NA_integer_)
  expect_identical(X[1], NA_integer_)  # NOK
})

test_that("NA conversion to integer work with big.matrices", {
  X <- bigmemory::big.matrix(1, 1, type = "integer", init = 7)
  expect_identical(X[1], 7L)
  X[1, 1] <- NA
  expect_identical(X[1, 1], NA_integer_)  # OK
  X[1, 1] <- NA_integer_
  expect_identical(X[1, 1], NA_integer_)  # OK
  expect_warning(X[1, 1] <- NA_real_)
  expect_identical(X[1, 1], NA_integer_)  # NOK
})
