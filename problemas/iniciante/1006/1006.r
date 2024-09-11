# Read multiple lines from stdin (must use 'r')
input <- file('stdin', 'r')

a <- as.double(readLines(input, n=1))
b <- as.double(readLines(input, n=1))
c <- as.double(readLines(input, n=1))

# Write to stdout (must use '')
write(paste("MEDIA =", format(round((2 * a + 3 * b + 5 * c)/10, 1), nsmall=1)), '')
