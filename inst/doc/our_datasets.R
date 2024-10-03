## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(
  collapse = FALSE,
  comment = "#>",
  warning = FALSE,
  message = FALSE
)

## -----------------------------------------------------------------------------
dataset_name <- "CovidOISExPONTENT.csv"

dataset_filepath <- system.file("extdata", dataset_name, package = "PvSTATEM", mustWork = TRUE)

## -----------------------------------------------------------------------------
library(PvSTATEM)

plate <- read_luminex_data(dataset_filepath)

plate

