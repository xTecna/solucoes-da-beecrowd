input <- file('stdin', 'r')

pares <- 0
impares <- 0
positivos <- 0
negativos <- 0
for (i in 1:5){
    numero <- as.integer(readLines(input, n=1))
    
    if (numero %% 2 == 0){
        pares <- pares + 1
    }else{
        impares <- impares + 1
    }

    if(numero > 0){
        positivos <- positivos + 1
    }else if(numero < 0){
        negativos <- negativos +1
    }
}

write(paste(pares, 'valor(es) par(es)'), '')
write(paste(impares, 'valor(es) impar(es)'), '')
write(paste(positivos, 'valor(es) positivo(s)'), '')
write(paste(negativos, 'valor(es) negativo(s)'), '')