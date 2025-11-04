# -------------------------------------------------------------
#   This script imports a wide-format Qualtrics survey dataset,
#   cleans column names, removes unnecessary metadata fields,
#   and reshapes the data into a long format suitable for
#   visualization in tools like Tableau or Power BI.
# -------------------------------------------------------------

# Load Required Packages
library(tidyverse)  # includes dplyr, tidyr, readr, etc.
library(janitor)    # for clean_names()

# Define File Paths
# Update these paths for your environment
input_file <- "data/raw/qualtrics_survey.csv"
output_file <- "data/processed/qualtrics_long.csv"

# Import and Clean Data
survey_data <- read.csv(input_file) %>%
  clean_names() %>%
  # Remove common Qualtrics metadata columns
  dplyr::select(
    -start_date, -end_date, -status, -ip_address,
    -duration_in_seconds, -recorded_date,
    -recipient_last_name, -recipient_first_name, -recipient_email,
    -external_reference, -location_latitude, -location_longitude,
    -distribution_channel, -user_language, -first_name, -last_name,
    -email, -username, -finished, -progress,
    -dplyr::starts_with("oe") # remove any open-ended text fields if not needed
  )

# Pivot Data from Wide to Long 
# Keeps respondent ID and grouping variable fixed,
# while transforming questions/responses into key-value pairs.
survey_long <- survey_data %>%
  pivot_longer(
    cols = -c(response_id, group),
    names_to = "question_name",
    values_to = "response"
  )

# Export Cleaned Long Data
write.csv(
  survey_long,
  output_file,
  na = "",
  row.names = FALSE
)

