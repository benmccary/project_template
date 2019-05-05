#' INIT
rm(list=ls())

require(RODBC)
require(dplyr)
source("../lib/read_sql.R")
source("../lib/save_data.R")

# SETTINGS
query.path <- "../munge/sample_query.sql" 
save.name <- "rawDat"
db <- "DATABASE"



# CREATE CONNECTION
con.string <- paste0('driver={SQL Server};server=SERVERNAME; database=', db, ';trusted_connection=true')
con <- odbcDriverConnect(
  con.string  
)



# READING SCRIPT
dat <- query.path %>%
  read_sql %>%
  sqlQuery(con, .) %>%
  mutate(download.date = Sys.Date())


odbcClose(con)
warning(paste0("Saving ", nrow(dat), " observations to 'data/' directory."))



# SAVE DATA
save.data(dat, save.name)
save.data(dat, paste0(save.name, "-", Sys.Date()), "../cache/")




