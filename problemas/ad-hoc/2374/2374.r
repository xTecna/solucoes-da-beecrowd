input <- file('stdin', 'r')

n <- as.integer(readLines(input, n=1))
m <- as.integer(readLines(input, n=1))
write(paste(n - m), '')