input <- file('stdin', 'r')

t <- as.integer(readLines(input, n=1))
for(i in 1:t) {
  n <- as.integer(readLines(input, n=1))
  write(paste(2 ** n - 1), '')
}