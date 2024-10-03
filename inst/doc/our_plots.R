## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(
  collapse = FALSE,
  comment = "#>",
  warning = FALSE,
  message = FALSE,
  dpi = 50,
  out.width = "70%"
)

## -----------------------------------------------------------------------------
library(PvSTATEM)

plate_filepath <- system.file("extdata", "CovidOISExPONTENT.csv", package = "PvSTATEM", mustWork = TRUE) # get the filepath of the csv dataset

layout_filepath <- system.file("extdata", "CovidOISExPONTENT_layout.xlsx", package = "PvSTATEM", mustWork = TRUE)


plate <- read_luminex_data(plate_filepath, layout_filepath) # read the data

plate

## -----------------------------------------------------------------------------
plot_layout(plate)

## -----------------------------------------------------------------------------
plot_counts(plate, "Spike_B16172")

## -----------------------------------------------------------------------------
plot_counts(plate, "FluA", plot_counts = FALSE)

## -----------------------------------------------------------------------------
plot_mfi_for_analyte(plate, "Spike_B16172")

## -----------------------------------------------------------------------------
plot_mfi_for_analyte(plate, "FluA", plot_type = "violin")

## -----------------------------------------------------------------------------
plot_standard_curve_analyte(plate, "Spike_B16172")

## -----------------------------------------------------------------------------
model <- create_standard_curve_model_analyte(plate, analyte_name = "Spike_B16172")
plot_standard_curve_analyte_with_model(plate, model)

