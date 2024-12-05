input <- file('stdin', 'r')

n <- as.integer(readLines(input, n=1))

write(paste((n + 1) * (n + 2) / 2), '')