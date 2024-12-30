input <- file('stdin', 'r')

teste <- 1
while (TRUE) {
    n <- as.integer(readLines(input, n=1))

    if (n == 0) {
        break
    }

    entrada <- as.integer(strsplit(readLines(input, n = 1), ' ')[[1]])

    resposta <- -1
    for(i in 1:n) {
        if (i == entrada[i]) {
            resposta <- i
        }
    }

    write(paste('Teste', teste), '')
    write(paste(resposta), '')
    write(paste(''), '')

    teste <- teste + 1
}