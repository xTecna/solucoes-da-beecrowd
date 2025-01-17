input <- file('stdin', 'r')

n <- as.integer(readLines(input, n=1))

for(i in 1:n) {
    hamekame <- readLines(input, n = 1)
    grupos <- gregexpr("a+", hamekame)
    matches <- regmatches(hamekame, grupos)[[1]]
    tamanho1 <- nchar(matches[1])
    tamanho2 <- nchar(matches[2])

    write(paste0('k', paste(rep('a', tamanho1 * tamanho2), collapse='')), '')
}