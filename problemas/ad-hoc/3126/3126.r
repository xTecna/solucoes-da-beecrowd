input <- file('stdin', 'r')

c <- as.integer(readLines(input, n=1))
numeros <- as.integer(strsplit(readLines(input, n = 1), ' ')[[1]])

resposta <- 0
for(i in 1:c) {
    resposta <- resposta + numeros[i]
}

write(paste(resposta), '')