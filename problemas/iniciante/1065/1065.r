input <- file('stdin', 'r')

pares <- 0
for (i in 1:5){
    numero <- as.integer(readLines(input, n=1))
    if (numero %% 2 == 0){
        pares <- pares + 1
    }
}

write(paste(pares, 'valores pares'), '')