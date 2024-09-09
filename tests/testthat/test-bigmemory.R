test_that("Conversion to big.matrix works", {

  X <- bigstatsr::FBM(10, 10, type = "double", init = 0)
  X[1] <- NA

  # Conversion works
  expect_s4_class(X$bm.desc(), "big.matrix.descriptor")
  expect_s4_class(X2 <- X$bm(), "big.matrix")
  expect_identical(typeof(X2), typeof(X))
  expect_equal(as.numeric(X2[1]), as.numeric(X[1]))
})
