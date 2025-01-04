input <- file('stdin', 'r')

l <- as.integer(readLines(input, n = 1))
c <- as.integer(readLines(input, n = 1))

write(paste(1 - xor(l %% 2, c %% 2)), '')