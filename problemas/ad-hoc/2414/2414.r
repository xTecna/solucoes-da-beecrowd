input <- file('stdin', 'r')

numeros <- as.integer(strsplit(readLines(input, n = 1), ' ')[[1]])

maior <- numeros[1]
for(i in 2:length(numeros)) {
    maior <- max(maior, numeros[i])
}

write(paste(maior), '')