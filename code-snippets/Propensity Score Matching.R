# ---------------------------------------------
# Script: Generic Propensity Score Matching (PSM)
# 
# What is Propensity Score Matching?
# Propensity Score Matching (PSM) is a statistical technique used to reduce selection bias
# in observational studies by pairing treated and control units with similar characteristics.
# It calculates a propensity score (the probability of receiving treatment given covariates)
# and matches units across groups based on that score.
#
# When to use it:
# Use PSM when comparing outcomes between a treatment and control group
# while controlling for confounding variables, especially when random assignment is not possible.
#
# Data requirements:
# - Data frame in tidy format, with one row per subject/unit.
# - A binary treatment indicator column (e.g., 0 = control, 1 = treatment).
# - Covariate columns to match on.
# ---------------------------------------------

# Load libraries
library(MatchIt)
library(cobalt)
library(tidyverse)

# ----------------------------
# Generic PSM function
# ----------------------------
run_psm <- function(data, treatment, covariates, method = "optimal", ratio = 1, distance = "glm") {
  
  # Build formula dynamically
  covariate_formula <- paste(covariates, collapse = " + ")
  formula <- as.formula(paste(treatment, "~", covariate_formula))
  
  # Run PSM
  psm_obj <- matchit(
    formula,
    data = data,
    distance = distance,
    method = method,
    ratio = ratio
  )
  
  # Print summary
  print(psm_obj)
  print(summary(psm_obj))
  
  # Covariate balance plot
  plot_balance <- love.plot(
    bal.tab(psm_obj),
    stat = c("m", "v"),
    grid = TRUE,
    threshold = c(m = 0.25, v = 1.25),
    stars = "std"
  )
  print(plot_balance)
  
  # Return matched data
  matched_data <- match.data(psm_obj)
  return(list(psm_object = psm_obj, matched_data = matched_data, balance_plot = plot_balance))
}

# ----------------------------
# Example usage
# ----------------------------
# matched_results <- run_psm(
#   data = my_data,
#   treatment = "treatment_var",
#   covariates = c("age", "gender", "income", "education")
# )
