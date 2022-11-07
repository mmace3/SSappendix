# Created: 17 July 2022
# Author: Marvin Mace

# Code in this file for running Simple Stock Synthesis models for the Black
# Drum Benchmark Stock Assessment. 

# For description of Simple Stock Synthesis see:
#
# Cope, JM. 2013. Implementing a statistical catch-at-age model (Stock Synthesis)
#     as a tool for deriving overfishing limits in data-limited situations. Fisheries
#     Research 142:3-14

# First a loop is used to run n_reps number of SS models where some parameter
# values are fixed and chosen from distributions. Output from each is saved in
# a separate folder. Then another loop is used to extract data from each model
# run, put together in one data frame, and save for use in plotting, text, etc.


#-------------------------------------------------------------------------------
# load libraries
#-------------------------------------------------------------------------------

library(r4ss) # read/write ss files
library(tidyverse)

#-------------------------------------------------------------------------------

# number or replicate models to run
n_reps <- 1000

# Get vector of values for depletion
# From beta distribution Jeff created based on uniform distribution
# assumed in last assessment. He couldn't use same uniform for
# prior in jabba model so he came up with this beta
depletion_vector <- rbeta(n_reps, 9.9, 4.2)


# Get vector of values for steepness
# from Shertzer and Conn 2012
steepness_vector <- rbeta(n_reps, 5.94, 1.97)


dir <- gsub(":", ".", paste("sss_reps_", gsub(" ", "_", date()), sep = ""))

dir.create(dir)

for(i in seq_along(c(1:n_reps)))
{
  
    # Read control file
    control_file_temp <- SS_readctl("control.ss")
    
    # Change steepness value
    control_file_temp[["SR_parms"]][2,3] <- steepness_vector[i]
    
    
    # write new control file with changed values
    SS_writectl(control_file_temp, 
                "control.ss", 
                overwrite=TRUE, 
                verbose=FALSE) 
    
    # Read data file
    data_file_temp <- SS_readdat("data.ss")
    
    # Get info needed to change depletion in final year
    Dep_fleet <- which(row.names(data_file_temp[["CPUEinfo"]]) == "Depletion")
    Dep_final_year <- data_file_temp[["endyr"]]
    CPUE_data <- data_file_temp[["CPUE"]]
    
    # Change depletion in final year
    CPUE_data[which(CPUE_data$index == Dep_fleet & CPUE_data$year == Dep_final_year),]$obs <- depletion_vector[i]
    
    data_file_temp[["CPUE"]] <- CPUE_data
    
    # write new data file with changed values
    SS_writedat(data_file_temp, 
                "data.ss", 
                overwrite=TRUE, 
                verbose=FALSE) 
    

  
  print(paste0("Starting rep: ", i)) 
  
  # run SS
  shell("ss.exe -nohess -nox")
  
  rep_dir <- paste0(dir, "/rep_", i)
  
  dir.create(rep_dir)
  
  files_to_move <- c("data.ss", "control.ss", "starter.ss", "forecast.ss", "Report.sso")
  
  for(j in c(1:length(files_to_move)))
  {
    
    file.copy(from = files_to_move[j],
              to = paste0(rep_dir, "/", files_to_move[j]))
    
  }
  
  print(paste("Done with rep: ", i, " ----------------------------------------"))
}
print(date())




# Now extract data from each model run for making plots, text, etc. Data from
# all runs will be stored together in one data frame (sss_out_df)

sss_out_df <- data.frame()

for(i in seq_along(c(1:n_reps)))
{
  print(paste0("Starting rep ", i))
  
  rep_dir <- paste0(dir, "/rep_", i)
  
  ss_out_temp <- SS_output(rep_dir,
                           verbose = FALSE,
                           covar = FALSE,
                           printstats = FALSE)
  
  rep <- i
  
  # vector of years
  year <- ss_out_temp[["sprseries"]]$Yr
  
  
  single_values_list <- list()
  # single values
  
  single_values_list$max_gradient <- ss_out_temp[["maximum_gradient_component"]]
  single_values_list$obs_survey_fyear <- ss_out_temp[["cpue"]]$Obs[[2]]
  single_values_list$pred_survey_fyear <- ss_out_temp[["cpue"]]$Exp[[2]]
  single_values_list$f_msy <- subset(ss_out_temp[["derived_quants"]], Label == "annF_MSY")$Value
  single_values_list$steepness <- subset(ss_out_temp[["parameters"]], Label == "SR_BH_steep")$Value
  single_values_list$MSY <- subset(ss_out_temp[["derived_quants"]], Label == "Ret_Catch_MSY")$Value
  single_values_list$OFL <- subset(ss_out_temp[["derived_quants"]], Label == "OFLCatch_2021")$Value
  single_values_list$SSBMSY <- subset(ss_out_temp[["derived_quants"]], Label == "SSB_MSY")$Value
  
  single_values_temp <- unlist(single_values_list,
                               use.names = FALSE)
  single_values_labels <- rep(names(single_values_list), 
                              unlist(lapply(single_values_list, length)))
  single_values_years <- rep(NA, times = length(single_values_temp))
  
  
  
  # time series
  timeseries_values_list <- list()
  timeseries_values_list$depletion <- ss_out_temp[["sprseries"]]$Deplete
  timeseries_values_list$f_timeseries <- ss_out_temp[["exploitation"]]$annual_F
  
  
  timeseries_values_temp <- unlist(timeseries_values_list,
                               use.names = FALSE)
  timeseries_values_labels <- rep(names(timeseries_values_list), 
                              unlist(lapply(timeseries_values_list, length)))
  timeseries_values_years <- rep(year, times = length(timeseries_values_list))
  
  # Put it all together
  values_temp <- c(single_values_temp, timeseries_values_temp)
  labels_temp <- c(single_values_labels, timeseries_values_labels)
  years_temp <- c(single_values_years, timeseries_values_years)
  rep_value_temp <- rep(rep, times = length(values_temp))
  
  
  temp_sss_out_df <-
    data.frame(Rep = rep_value_temp,
               Name = labels_temp,
               Year = years_temp,
               Value = values_temp)
  
  sss_out_df <- rbind(sss_out_df, temp_sss_out_df)
  
  print(paste0("Done with rep ", i))
  
}

# write output to csv
write.csv(sss_out_df, 
          file = "SSS_out_df.csv",
          row.names = FALSE)





