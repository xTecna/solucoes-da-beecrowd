input <- file('stdin', 'r')

b <- as.integer(readLines(input, n=1))
t <- as.integer(readLines(input, n=1))

if (b + t > 160) {
    write(paste(1), '')
} else if (b + t < 160) {
    write(paste(2), '')
} else {
    write(paste(0), '')
}