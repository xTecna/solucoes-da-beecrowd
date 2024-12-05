input <- file('stdin', 'r')

entrada <- as.integer(strsplit(readLines(input, n = 1), ' ')[[1]])
n <- entrada[1]
saldo <- entrada[2]

resposta <- saldo
for(i in 1:n) {
    movimentacao <- as.integer(readLines(input, n = 1))
    saldo <- saldo + movimentacao

    resposta <- min(resposta, saldo)
}

write(paste(resposta), '')