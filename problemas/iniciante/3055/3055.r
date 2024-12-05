input <- file('stdin', 'r')

a <- as.integer(readLines(input, n=1))
m <- as.integer(readLines(input, n=1))

write(paste(2 * m - a), '')