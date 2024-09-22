input <- file('stdin', 'r')

x <- as.integer(readLines(input, n = 1))
write(paste(x + 2 - (x %% 2)), '')