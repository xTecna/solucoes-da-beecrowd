input <- file('stdin', 'r')

n <- as.integer(readLines(input, n=1))

menor_preco <- 1000.0
for(i in 1:n) {
    entrada <- as.double(strsplit(readLines(input, n = 1), ' ')[[1]])
    p <- entrada[1]
    g <- entrada[2]

    menor_preco <- min(menor_preco, p / g)
}

write(paste(format(round(1000.0 * menor_preco, 2), nsmall=2)), '')