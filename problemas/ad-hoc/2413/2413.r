input <- file('stdin', 'r')

t <- as.integer(readLines(input, n = 1))
write(paste(4 * t), '')