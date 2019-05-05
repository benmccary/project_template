# saves to cache & data
save.data <- function(x, save.name, path="../data/"){
  assign(save.name, x)
  save(list=save.name, file = paste0(path, save.name, ".Rdata"))
}