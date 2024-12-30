input <- file('stdin', 'r')

m <- as.integer(readLines(input, n=1))
a <- as.integer(readLines(input, n=1))
b <- as.integer(readLines(input, n=1))

c <- m - a - b

write(paste(max(a, max(b, c))), '')