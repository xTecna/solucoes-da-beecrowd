input <- file('stdin', 'r')

entrada <- as.integer(strsplit(readLines(input, n = 1), ' ')[[1]])
n <- entrada[1]
x <- entrada[2]

alturas <- as.integer(strsplit(readLines(input, n = 1), ' ')[[1]])

resposta <- 1
acumulado <- 1

if(n > 1) {
    for(i in 2:n) {
        if (alturas[i] - alturas[i - 1] <= x) {
            acumulado <- acumulado + 1
        } else {
            resposta <- max(resposta, acumulado)
            acumulado <- 1
        }
    }
    resposta <- max(resposta, acumulado)
}

write(paste(resposta), '')
