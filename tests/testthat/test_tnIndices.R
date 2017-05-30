context("Temperature AVG indices")

library(futile.logger)
flog.threshold(DEBUG)
flog.appender(appender.file('scenarioIndices_MINtemperature.log'))
library(data.table)

context("Temp tn ref indices - Entire station set")

ifile_tn   <- system.file("refdata","KNMI14____ref_tn___19810101-20101231_v3.2.txt", package="knmitransformer")
ofile      <- "tmp.txt" # output file - used only temporary
regio.file <- system.file("extdata","stationstabel", package="knmitransformer") # table that links stations to region


test_that("reference", {
  index = "aTN"

  scenario = "ref"

  horizon = 1981

  tmp <- TempMinIndices(ifile_tn = ifile_tn, index=index,
                        ofile= ofile,
                        scenario = scenario,
                        horizon = horizon, season = "year",
                        regio.file = regio.file)

  expect_equal_to_reference(tmp, "regressionOutput/temperature/KNMI14___ref_tn_aTN.rds")

})
test_that("2030 decadal prediction", {
  index = "aTN"

  scenario = "GL"

  horizon = 2030

  tmp <- TempMinIndices(ifile_tn = ifile_tn, index=index,
                        ofile= ofile,
                        scenario = scenario,
                        horizon = horizon, season = "year",
                        regio.file = regio.file)

  expect_equal_to_reference(tmp, "regressionOutput/temperature/KNMI14___2030_tn_aTN.rds")

  index = "nTN"
  tmp <- TempMinIndices(ifile_tn = ifile_tn, index=index,
                        ofile= ofile,
                        scenario = scenario,
                        horizon = horizon, season = "year",
                        regio.file = regio.file)

  expect_equal_to_reference(tmp, "regressionOutput/temperature/KNMI14___2030_tn_nTN.rds")

  index = "nFD"
  tmp <- TempMinIndices(ifile_tn = ifile_tn, index=index,
                        ofile= ofile,
                        scenario = scenario, season = "year",
                        horizon = horizon,
                        regio.file = regio.file)

  expect_equal_to_reference(tmp, "regressionOutput/temperature/KNMI14___2030_tn_nFD.rds")

  index = "nstFD"
  tmp <- TempMinIndices(ifile_tn = ifile_tn, index=index,
                        ofile= ofile,
                        scenario = scenario, season = "year",
                        horizon = horizon,
                        regio.file = regio.file)

  expect_equal_to_reference(tmp, "regressionOutput/temperature/KNMI14___2030_tn_nstFD.rds")

})

test_that("aTN decadal prediction", {
  index = "aTN"

  scenario = "GL"
  horizon = 2050

  tmp <- TempMinIndices(ifile_tn = ifile_tn, index=index,
                        ofile= ofile, season = "year",
                        scenario = scenario,
                        horizon = horizon,
                        regio.file = regio.file)

  expect_equal_to_reference(tmp, "regressionOutput/temperature/KNMI14_GL_2050_aTN.rds")

  horizon = 2085

  tmp <- TempMinIndices(ifile_tn = ifile_tn, index=index,
                        ofile= ofile,
                        scenario = scenario,
                        horizon = horizon, season = "year",
                        regio.file = regio.file)

  expect_equal_to_reference(tmp, "regressionOutput/temperature/KNMI14_GL_2085_aTN.rds")

  scenario = "WL"

  horizon = 2050

  tmp <- TempMinIndices(ifile_tn = ifile_tn, index=index,
                        ofile= ofile,
                        scenario = scenario,
                        horizon = horizon, season = "year",
                        regio.file = regio.file)

  expect_equal_to_reference(tmp, "regressionOutput/temperature/KNMI14_WL_2050_aTN.rds")

  horizon = 2085

  tmp <- TempMinIndices(ifile_tn = ifile_tn, index=index,
                        ofile= ofile,
                        scenario = scenario,
                        horizon = horizon, season = "year",
                        regio.file = regio.file)

  expect_equal_to_reference(tmp, "regressionOutput/temperature/KNMI14_WL_2085_aTN.rds")

  scenario = "GH"

  horizon = 2050

  tmp <- TempMinIndices(ifile_tn = ifile_tn, index=index,
                        ofile= ofile,
                        scenario = scenario,
                        horizon = horizon, season = "year",
                        regio.file = regio.file)

  expect_equal_to_reference(tmp, "regressionOutput/temperature/KNMI14_GH_2050_aTN.rds")

  horizon = 2085

  tmp <- TempMinIndices(ifile_tn = ifile_tn, index=index,
                        ofile= ofile,
                        scenario = scenario,
                        horizon = horizon, season = "year",
                        regio.file = regio.file)

  expect_equal_to_reference(tmp, "regressionOutput/temperature/KNMI14_GH_2085_aTN.rds")

  scenario = "WH"

  horizon = 2050

  tmp <- TempMinIndices(ifile_tn = ifile_tn, index=index,
                        ofile= ofile,
                        scenario = scenario,
                        horizon = horizon, season = "year",
                        regio.file = regio.file)

  expect_equal_to_reference(tmp, "regressionOutput/temperature/KNMI14_WH_2050_aTN.rds")

  horizon = 2085

  tmp <- TempMinIndices(ifile_tn = ifile_tn, index=index,
                        ofile= ofile,
                        scenario = scenario,
                        horizon = horizon, season = "year",
                        regio.file = regio.file)

  expect_equal_to_reference(tmp, "regressionOutput/temperature/KNMI14_WH_2085_aTN.rds")

})

test_that("nTN (tropical nights) decadal prediction", {
  index = "nTN"

  scenario = "GL"
  horizon = 2050

  tmp <- TempMinIndices(ifile_tn = ifile_tn, index=index,
                        ofile= ofile,
                        scenario = scenario,
                        horizon = horizon, season = "year",
                        regio.file = regio.file)

  expect_equal_to_reference(tmp, "regressionOutput/temperature/KNMI14_GL_2050_nTN.rds")

  horizon = 2085

  tmp <- TempMinIndices(ifile_tn = ifile_tn, index=index,
                        ofile= ofile,
                        scenario = scenario,
                        horizon = horizon, season = "year",
                        regio.file = regio.file)

  expect_equal_to_reference(tmp, "regressionOutput/temperature/KNMI14_GL_2085_nTN.rds")

  scenario = "WL"
  horizon = 2050

  tmp <- TempMinIndices(ifile_tn = ifile_tn, index=index,
                        ofile= ofile,
                        scenario = scenario,
                        horizon = horizon, season = "year",
                        regio.file = regio.file)

  expect_equal_to_reference(tmp, "regressionOutput/temperature/KNMI14_WL_2050_nTN.rds")

  horizon = 2085

  tmp <- TempMinIndices(ifile_tn = ifile_tn, index=index,
                        ofile= ofile,
                        scenario = scenario,
                        horizon = horizon, season = "year",
                        regio.file = regio.file)

  expect_equal_to_reference(tmp, "regressionOutput/temperature/KNMI14_WL_2085_nTN.rds")


  scenario = "GH"
  horizon = 2050

  tmp <- TempMinIndices(ifile_tn = ifile_tn, index=index,
                        ofile= ofile,
                        scenario = scenario,
                        horizon = horizon, season = "year",
                        regio.file = regio.file)

  expect_equal_to_reference(tmp, "regressionOutput/temperature/KNMI14_GH_2050_nTN.rds")

  horizon = 2085

  tmp <- TempMinIndices(ifile_tn = ifile_tn, index=index,
                        ofile= ofile,
                        scenario = scenario,
                        horizon = horizon, season = "year",
                        regio.file = regio.file)

  expect_equal_to_reference(tmp, "regressionOutput/temperature/KNMI14_GH_2085_nTN.rds")

  scenario = "WH"
  horizon = 2050

  tmp <- TempMinIndices(ifile_tn = ifile_tn, index=index,
                        ofile= ofile,
                        scenario = scenario,
                        horizon = horizon, season = "year",
                        regio.file = regio.file)

  expect_equal_to_reference(tmp, "regressionOutput/temperature/KNMI14_WH_2050_nTN.rds")

  horizon = 2085

  tmp <- TempMinIndices(ifile_tn = ifile_tn, index=index,
                        ofile= ofile,
                        scenario = scenario,
                        horizon = horizon, season = "year",
                        regio.file = regio.file)

  expect_equal_to_reference(tmp, "regressionOutput/temperature/KNMI14_WH_2085_nTN.rds")
})

test_that("nFD decadal prediction", {
  index = "nFD"

  scenario = "GL"
  horizon = 2050

  tmp <- TempMinIndices(ifile_tn = ifile_tn, index=index,
                        ofile= ofile,
                        scenario = scenario,
                        horizon = horizon, season = "year",
                        regio.file = regio.file)

  expect_equal_to_reference(tmp, "regressionOutput/temperature/KNMI14_GL_2050_nFD.rds")

  horizon = 2085

  tmp <- TempMinIndices(ifile_tn = ifile_tn, index=index,
                        ofile= ofile,
                        scenario = scenario,
                        horizon = horizon, season = "year",
                        regio.file = regio.file)

  expect_equal_to_reference(tmp, "regressionOutput/temperature/KNMI14_GL_2085_nFD.rds")

  scenario = "WL"
  horizon = 2050

  tmp <- TempMinIndices(ifile_tn = ifile_tn, index=index,
                        ofile= ofile,
                        scenario = scenario,
                        horizon = horizon, season = "year",
                        regio.file = regio.file)

  expect_equal_to_reference(tmp, "regressionOutput/temperature/KNMI14_WL_2050_nFD.rds")

  horizon = 2085

  tmp <- TempMinIndices(ifile_tn = ifile_tn, index=index,
                        ofile= ofile,
                        scenario = scenario,
                        horizon = horizon, season = "year",
                        regio.file = regio.file)

  expect_equal_to_reference(tmp, "regressionOutput/temperature/KNMI14_WL_2085_nFD.rds")


  scenario = "GH"
  horizon = 2050

  tmp <- TempMinIndices(ifile_tn = ifile_tn, index=index,
                        ofile= ofile,
                        scenario = scenario,
                        horizon = horizon, season = "year",
                        regio.file = regio.file)

  expect_equal_to_reference(tmp, "regressionOutput/temperature/KNMI14_GH_2050_nFD.rds")

  horizon = 2085

  tmp <- TempMinIndices(ifile_tn = ifile_tn, index=index,
                        ofile= ofile,
                        scenario = scenario,
                        horizon = horizon, season = "year",
                        regio.file = regio.file)

  expect_equal_to_reference(tmp, "regressionOutput/temperature/KNMI14_GH_2085_nFD.rds")

  scenario = "WH"
  horizon = 2050

  tmp <- TempMinIndices(ifile_tn = ifile_tn, index=index,
                        ofile= ofile,
                        scenario = scenario,
                        horizon = horizon, season = "year",
                        regio.file = regio.file)

  expect_equal_to_reference(tmp, "regressionOutput/temperature/KNMI14_WH_2050_nFD.rds")

  horizon = 2085

  tmp <- TempMinIndices(ifile_tn = ifile_tn, index=index,
                        ofile= ofile,
                        scenario = scenario,
                        horizon = horizon, season = "year",
                        regio.file = regio.file)

  expect_equal_to_reference(tmp, "regressionOutput/temperature/KNMI14_WH_2085_nFD.rds")
})


test_that("nstFD decadal prediction", {
  index = "nstFD"

  scenario = "GL"
  horizon = 2050

  tmp <- TempMinIndices(ifile_tn = ifile_tn, index=index,
                        ofile= ofile,
                        scenario = scenario,
                        horizon = horizon, season = "year",
                        regio.file = regio.file)

  expect_equal_to_reference(tmp, "regressionOutput/temperature/KNMI14_GL_2050_nstFD.rds")

  horizon = 2085

  tmp <- TempMinIndices(ifile_tn = ifile_tn, index=index,
                        ofile= ofile,
                        scenario = scenario,
                        horizon = horizon, season = "year",
                        regio.file = regio.file)

  expect_equal_to_reference(tmp, "regressionOutput/temperature/KNMI14_GL_2085_nstFD.rds")

  scenario = "WL"
  horizon = 2050

  tmp <- TempMinIndices(ifile_tn = ifile_tn, index=index,
                        ofile= ofile,
                        scenario = scenario,
                        horizon = horizon, season = "year",
                        regio.file = regio.file)

  expect_equal_to_reference(tmp, "regressionOutput/temperature/KNMI14_WL_2050_nstFD.rds")

  horizon = 2085

  tmp <- TempMinIndices(ifile_tn = ifile_tn, index=index,
                        ofile= ofile,
                        scenario = scenario,
                        horizon = horizon, season = "year",
                        regio.file = regio.file)

  expect_equal_to_reference(tmp, "regressionOutput/temperature/KNMI14_WL_2085_nstFD.rds")


  scenario = "GH"
  horizon = 2050

  tmp <- TempMinIndices(ifile_tn = ifile_tn, index=index,
                        ofile= ofile,
                        scenario = scenario,
                        horizon = horizon, season = "year",
                        regio.file = regio.file)

  expect_equal_to_reference(tmp, "regressionOutput/temperature/KNMI14_GH_2050_nstFD.rds")

  horizon = 2085

  tmp <- TempMinIndices(ifile_tn = ifile_tn, index=index,
                        ofile= ofile,
                        scenario = scenario,
                        horizon = horizon, season = "year",
                        regio.file = regio.file)

  expect_equal_to_reference(tmp, "regressionOutput/temperature/KNMI14_GH_2085_nstFD.rds")

  scenario = "WH"
  horizon = 2050

  tmp <- TempMinIndices(ifile_tn = ifile_tn, index=index,
                        ofile= ofile,
                        scenario = scenario,
                        horizon = horizon, season = "year",
                        regio.file = regio.file)

  expect_equal_to_reference(tmp, "regressionOutput/temperature/KNMI14_WH_2050_nstFD.rds")

  horizon = 2085

  tmp <- TempMinIndices(ifile_tn = ifile_tn, index=index,
                        ofile= ofile,
                        scenario = scenario,
                        horizon = horizon, season = "year",
                        regio.file = regio.file)

  expect_equal_to_reference(tmp, "regressionOutput/temperature/KNMI14_WH_2085_nstFD.rds")
})