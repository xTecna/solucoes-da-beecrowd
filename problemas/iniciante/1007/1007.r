# Read multiple lines from stdin (must use 'r')
input <- file('stdin', 'r')

a <- as.integer(readLines(input, n=1))
b <- as.integer(readLines(input, n=1))
c <- as.integer(readLines(input, n=1))
d <- as.integer(readLines(input, n=1))

# Write to stdout (must use '')
write(paste("DIFERENCA =", a * b - c * d), '')
