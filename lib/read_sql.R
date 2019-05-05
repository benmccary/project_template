# REQUIRED FOR READING THE SQL QUERY USED IN THE DATA PULL
read_sql <- function(path){
  
  # Check that the file actually exists
  
  stopifnot(file.exists(path))
  
  # Read all the characters from the given file 
  
  sql <- readChar(path, nchar = file.info(path)$size)
  
  # Print the sql query
  
  sql
}

