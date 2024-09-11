input <- file('stdin', 'r')

numeros <- as.integer(strsplit(readLines(input, n=1), ' ')[[1]])
x <- numeros[1]
y <- numeros[2]
while(x != 0 && y != 0){
    if(x > 0){
        if(y > 0){
            write(paste('primeiro'), '')
        }else{
            write(paste('quarto'), '')
        }
    }else{
        if(y > 0){
            write(paste('segundo'), '')
        }else{
            write(paste('terceiro'), '')
        }
    }

    numeros <- as.integer(strsplit(readLines(input, n=1), ' ')[[1]])
    x <- numeros[1]
    y <- numeros[2]
}