input <- file('stdin', 'r')

while(TRUE){
    n <- as.integer(readLines(input, n=1))
    if(n == 0) {
        break
    }

    resposta <- ''
    menor_ano <- 9999
    for(i in 1:n) {
        entrada <- strsplit(readLines(input, n = 1), ' ')[[1]]
        planeta <- entrada[1]
        ano <- as.integer(entrada[2]) - as.integer(entrada[3])

        if(ano < menor_ano) {
            menor_ano <- ano
            resposta <- planeta
        }
    }

    write(paste(resposta), '')
}