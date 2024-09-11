input <- file('stdin', 'r')

while(TRUE){
    numeros <- as.integer(strsplit(readLines(input, n=1), ' ')[[1]])
    x <- numeros[1]
    y <- numeros[2]

    if(x < y){
        write(paste('Crescente'), '')
    }else if(x > y){
        write(paste('Decrescente'), '')
    }else{
        break
    }
}