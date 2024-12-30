input <- file('stdin', 'r')

x <- as.integer(readLines(input, n=1))
y <- as.double(readLines(input, n=1))

write(paste(format(round(x/y, 3), nsmall=3), "km/l"), '')