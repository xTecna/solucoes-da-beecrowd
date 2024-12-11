input <- file('stdin', 'r')

variacoes <- function(letra) {
    if (letra == 'A' || letra == 'E' || letra == 'I' || letra == 'O' || letra == 'S') {
        return(3)
    } else {
        return(2)
    }
}

n <- as.integer(readLines(input, n=1))
for (i in 1:n) {
    senha <- toupper(readLines(input, n=1))

    resposta <- 1
    for (j in 1:nchar(senha)) {
        resposta <- resposta * variacoes(substr(senha, j, j))
    }
    write(paste(resposta), '')
}