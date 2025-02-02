input <- file('stdin', 'r')

n <- as.integer(readLines(input, n=1))
for(i in 1:n) {
    linha <- readLines(input, n = 1)
    parte1 <- as.integer(substring(linha, 3, 4))
    parte2 <- as.integer(substring(linha, 6, 8))
    parte3 <- as.integer(substring(linha, 12, 13))

    write(paste(parte1 + parte2 + parte3), '')
}