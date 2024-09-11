input <- file('stdin', 'r')

N <- as.integer(readLines(input, n=1))

dentro <- 0
fora <- 0
for (i in 1:N){
    numero <- as.integer(readLines(input, n=1))
    if(numero >= 10 && numero <= 20){
        dentro <- dentro + 1
    }else{
        fora <- fora + 1
    }
}

write(paste(dentro, 'in'), '')
write(paste(fora, 'out'), '')