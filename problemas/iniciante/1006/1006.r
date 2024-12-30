input <- file('stdin', 'r')

a <- as.double(readLines(input, n=1))
b <- as.double(readLines(input, n=1))
c <- as.double(readLines(input, n=1))

write(paste("MEDIA =", format(round((2 * a + 3 * b + 5 * c)/10, 1), nsmall=1)), '')