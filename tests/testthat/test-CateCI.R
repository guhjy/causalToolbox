library(testthat)
test_that("Tests CateCI", {
  context('CateCI')
  set.seed(1423614230)

  feat <- iris[, -1]
  tr <- rbinom(nrow(iris), 1, .5)
  yobs <- iris[, 1]

  xl <- X_RF(
    feat = feat,
    tr = tr,
    yobs = yobs,
    nthread = 1,
    verbose = FALSE
  )
  CIs <- CateCI(theObject = xl, feature_new = feat, 
                bootstrapVersion = "normalApprox", B = 5, verbose = FALSE)
  testthat::expect_equal(as.numeric(CIs[2,]),
                         c(0.081145063, 0.003390044, 0.158900082),
                         tolerance = 1e-4)

  sl <- S_RF(
    feat = feat,
    tr = tr,
    yobs = yobs,
    nthread = 1
  )
  CIs <- CateCI(sl, feat, B = 5, verbose = FALSE)
  expect_equal(as.numeric(CIs[1,]),
               c(-0.009515285, -0.040672827, 0.021642256),
               tolerance = 1e-4)

  tl <- T_RF(
    feat = feat,
    tr = tr,
    yobs = yobs,
    nthread = 1
  )
  CIs <- CateCI(tl, feat, B = 5, verbose = FALSE)
  expect_equal(as.numeric(CIs[1,]),
               c(0.01109552, -0.12133612, 0.14352717),
               tolerance = 1e-4)

  Ltl <- T_BART(
    feat = feat, 
    tr = tr,
    yobs = yobs
  )
  CIs <- CateCI(tl, feat, B = 5, verbose = FALSE)
  expect_equal(as.numeric(CIs[1,]),
               c(0.01109552, -0.26207101,  0.28426206),
               tolerance = 1e-7)
  
  expect_warning(CIs <- CateCI(
    theObject = xl,
    feature_new = feat[1:100,],
    bootstrapVersion = "smoothed",
    B = 5,
    verbose = FALSE, 
    method = "maintain_group_ratios",
    nthread = 0
  ))
  testthat::expect_equal(as.numeric(CIs[2,]),
                         c(0.07460039, -0.66162787,  0.81082864),
                         tolerance = 1e-4)
})
