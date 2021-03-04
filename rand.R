#!/usr/bin/Rscript
random <- function(m, a, c, x){
  return((a * x + c) %% m)
}

args <- commandArgs()
if (length(args) == 9) {
  cat(random(strtoi(args[6]), strtoi(args[7]), strtoi(args[8]), strtoi(args[9])))
} else {
  cat("Error: Not matching argument count.")
}
