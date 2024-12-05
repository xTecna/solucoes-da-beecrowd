input <- file('stdin', 'r')

l <- as.integer(readLines(input, n=1))
c <- as.integer(readLines(input, n=1))

write(paste(l * c + (l - 1) * (c - 1)), '')
write(paste(2 * (l + c - 2)), '')