input <- file('stdin', 'r')

media <- 0
validas <- 0
while(validas < 2){
    nota <- as.double(readLines(input, n=1))
    if(nota >= 0.0 && nota <= 10.0){
        validas = validas + 1
        media = media + nota
    }else{
        write(paste('nota invalida'), '')
    }
}

write(paste('media =', format(round(media/2, 2), nsmall=2)), '')