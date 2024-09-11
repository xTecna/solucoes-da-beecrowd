input <- file('stdin', 'r')

X <- as.integer(readLines(input, n=1))
Y <- as.integer(readLines(input, n=1))

if(X > Y){
    temp <- X
    X = Y
    Y = temp
}

soma <- 0
for (i in X:Y){
    if(i %% 13 != 0){
        soma = soma + i
    }
}

write(paste(soma), '')