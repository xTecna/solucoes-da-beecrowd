input <- file('stdin', 'r')

n <- as.integer(readLines(input, n = 1))
write(paste(sprintf("%X", n)), '')