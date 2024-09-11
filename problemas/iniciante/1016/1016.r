input <- file('stdin', 'r')

distancia <- as.integer(readLines(input, n=1))

write(paste((2 * distancia), "minutos"), '')
