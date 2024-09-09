test_that("Conversion to big.matrix works", {

  t <- "raw"
  X <- bigstatsr::FBM(10, 10, type = t, init = 0)
  if (t != "raw") X[1] <- NA

  # Conversion works
  expect_s4_class(X$bm.desc(), "big.matrix.descriptor")
  expect_s4_class(X2 <- X$bm(), "big.matrix")
  expect_identical(typeof(X2), typeof(X))
  if (t != "float") expect_equal(as.numeric(X2[1]), as.numeric(X[1]))


  t <- "integer"
  X <- bigstatsr::FBM(10, 10, type = t, init = 0)
  if (t != "raw") X[1] <- NA

  # Conversion works
  expect_s4_class(X$bm.desc(), "big.matrix.descriptor")
  expect_s4_class(X2 <- X$bm(), "big.matrix")
  expect_identical(typeof(X2), typeof(X))
  if (t != "float") expect_equal(as.numeric(X2[1]), as.numeric(X[1]))


  t <- "float"
  X <- bigstatsr::FBM(10, 10, type = t, init = 0)
  if (t != "raw") X[1] <- NA

  # Conversion works
  expect_s4_class(X$bm.desc(), "big.matrix.descriptor")
  expect_s4_class(X2 <- X$bm(), "big.matrix")
  expect_identical(typeof(X2), typeof(X))
  if (t != "float") expect_equal(as.numeric(X2[1]), as.numeric(X[1]))


  t <- "double"
  X <- bigstatsr::FBM(10, 10, type = t, init = 0)
  if (t != "raw") X[1] <- NA

  # Conversion works
  expect_s4_class(X$bm.desc(), "big.matrix.descriptor")
  expect_s4_class(X2 <- X$bm(), "big.matrix")
  expect_identical(typeof(X2), typeof(X))
  if (t != "float") expect_equal(as.numeric(X2[1]), as.numeric(X[1]))

})
