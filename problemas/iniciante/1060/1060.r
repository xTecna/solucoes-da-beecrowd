input <- file('stdin', 'r')

positivos <- 0
for (i in 1:6){
    numero <- as.double(readLines(input, n=1))
    if (numero > 0){
        positivos <- positivos + 1
    }
}

write(paste(positivos, 'valores positivos'), '')