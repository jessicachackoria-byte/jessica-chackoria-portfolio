# ---------------------------------------------

# What is Cohen's Kappa? 
# Cohen's Kappa is a statistic that measures inter-rater agreement for categorical data. 
# It accounts for agreement occurring by chance. Values range from -1 (complete disagreement) 
# to 1 (perfect agreement), with 0 indicating chance-level agreement.

# When to use it? 
# Use Cohen's Kappa when two or more raters categorize the same items (e.g., multiple reviewers 
# rating a letter of recommendation as strong or weak, or interviewers evaluating a candidate’s 
# response as strong or weak) and you want to quantify how consistently they agree.

# Excel file requirements:
# The Excel file should contain columns representing ratings by different raters. 
# Column names should follow a consistent pattern for each construct (e.g., "lor_rater1", "lor_rater2").
# Each row represents a single item or person being rated.

# ---------------------------------------------


# Load libraries
library(readxl)
library(tidyverse)
library(irr)

# Import your dataset
df <- read_excel("path/to/your/file.xlsx")

# Function to calculate Cohen's kappa for a column prefix
calculate_kappa_for_prefix <- function(df, prefix) {
  kappa2(df %>% select(starts_with(prefix)))
}

# Example usage with generic constructs
kappa_construct1 <- calculate_kappa_for_prefix(df, "construct1")
kappa_construct2 <- calculate_kappa_for_prefix(df, "construct2")
kappa_construct3 <- calculate_kappa_for_prefix(df, "construct3")
kappa_construct4 <- calculate_kappa_for_prefix(df, "construct4")
kappa_construct5 <- calculate_kappa_for_prefix(df, "construct5")
kappa_construct6 <- calculate_kappa_for_prefix(df, "construct6")

# Display results
print(kappa_construct1)
print(kappa_construct2)
print(kappa_construct3)
print(kappa_construct4)
print(kappa_construct5)
print(kappa_construct6)
