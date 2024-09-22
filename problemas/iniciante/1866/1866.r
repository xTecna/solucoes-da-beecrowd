input <- file('stdin', 'r')

n <- as.integer(readLines(input, n = 1))
for(i in 1:n) {
  x <- as.integer(readLines(input, n = 1))
  write(paste(x %% 2), '')
}