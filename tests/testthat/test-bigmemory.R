test_that("Conversion to big.matrix works", {

  options(max.print = 100)

  t <- "raw"
  X <- bigstatsr::FBM(10, 10, type = t, init = 0)
  print(X[])
  # if (t != "raw") X[1] <- NA

  # Conversion works
  expect_s4_class(X$bm.desc(), "big.matrix.descriptor")
  expect_s4_class(X2 <- X$bm(), "big.matrix")
  print(X2[])
  expect_identical(typeof(X2), typeof(X))
  print(X2[1])
  print(X2[1, 1])
  expect_equal(as.numeric(X2[1]), as.numeric(X[1]))
  expect_equal(as.numeric(X2[1, 1]), as.numeric(X[1, 1]))

})
