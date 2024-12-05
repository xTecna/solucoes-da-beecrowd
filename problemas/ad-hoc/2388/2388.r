input <- file('stdin', 'r')

n <- as.integer(readLines(input, n=1))

resposta <- 0
for(i in 1:n) {
    entrada <- as.integer(strsplit(readLines(input, n = 1), ' ')[[1]])
    resposta <- resposta + entrada[1] * entrada[2]
}

write(paste(resposta), '')