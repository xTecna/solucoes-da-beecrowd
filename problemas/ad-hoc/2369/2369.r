input <- file('stdin', 'r')

n <- as.integer(readLines(input, n=1))

conta <- 7
if (n > 100) {
    conta <- conta + (n - 100) * 5
    n <- 100
}
if (n > 30) {
    conta <- conta + (n - 30) * 2
    n <- 30
}
if (n > 10) {
    conta <- conta + (n - 10)
}

write(paste(conta), '')