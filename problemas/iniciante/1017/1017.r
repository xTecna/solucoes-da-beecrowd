input <- file('stdin', 'r')

tempo <- as.integer(readLines(input, n=1))
velocidade <- as.integer(readLines(input, n=1))

write(format(round((tempo * velocidade)/12, 3), nsmall=3), '')
