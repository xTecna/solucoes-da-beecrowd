input <- file('stdin', 'r')

n <- as.integer(readLines(input, n=1))
divisoes <- as.integer(strsplit(readLines(input, n = 1), ' ')[[1]])

resposta <- 0
for(i in 1:n) {
    resposta <- resposta + divisoes[i]
}

write(paste(resposta - n), '')