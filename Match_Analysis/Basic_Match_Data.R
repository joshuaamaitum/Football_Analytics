#############################################
# Football with R: Full codes
# Amaitum Joshua Elukut
#############################################


# worldfootballR ? an R package built to aid in the extraction of world football data from a number of popular websites (with their consent)


#The package as at version 0.3.2 provides access to data from the following data sites:
#1. FBref.com (a whole host of data to analyse, including results, match stats, season long stats, player and team stats, etc);
#2. Transfermarkt.com (player market values, team transfer history, player transfer history); and,
#3. Understat.com (shot locations data for matches played in the major leagues)


rm(list = ls()) #clear R memory


#Load packages
library(worldfootballR)
library(devtools)
library(tidyverse)
library(ggrepel)


# Get match urls
#------------------
epl_2024_urls <- fb_match_urls(country = "ENG", gender = "M", season_end_year = 2024, tier="1st")
epl_2024_urls


# function to extract match report data
tot_new_2024 <- fb_match_report(match_url = "https://fbref.com/en/matches/be6d1aac/Tottenham-Hotspur-Newcastle-United-December-10-2023-Premier-League")
dplyr::glimpse(tot_new_2024)


# function to extract match summary data
tot_new_2024_summary <- fb_match_summary(match_url = "https://fbref.com/en/matches/be6d1aac/Tottenham-Hotspur-Newcastle-United-December-10-2023-Premier-League")
dplyr::glimpse(tot_new_2024_summary)


# function to extract match lineups
tot_new_2024_lineups <- fb_match_lineups(match_url = "https://fbref.com/en/matches/be6d1aac/Tottenham-Hotspur-Newcastle-United-December-10-2023-Premier-League")
dplyr::glimpse(tot_new_2024_lineups)
