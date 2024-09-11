input <- file('stdin', 'r')

alcool <- 0
gasolina <- 0
diesel <- 0
codigo <- as.integer(readLines(input, n=1))
while(codigo != 4){
    if(codigo == 1){
        alcool = alcool + 1
    }else if(codigo == 2){
        gasolina = gasolina + 1
    }else if(codigo == 3){
        diesel = diesel + 1
    }

    codigo <- as.integer(readLines(input, n=1))
}

write(paste('MUITO OBRIGADO'), '')
write(paste('Alcool:', alcool), '')
write(paste('Gasolina:', gasolina), '')
write(paste('Diesel:', diesel), '')