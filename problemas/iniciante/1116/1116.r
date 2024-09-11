input <- file('stdin', 'r')

N <- as.integer(readLines(input, n=1))
for(i in 1:N){
    entrada <- as.integer(strsplit(readLines(input, n=1), ' ')[[1]])
    X <- entrada[1]
    Y <- entrada[2]

    if(Y == 0){
        write(paste('divisao impossivel'), '')
    }else{
        write(paste(format(round(X/Y, 1), nsmall=1)), '')
    }
}