somaPA <- function(a1, an, n) {
    return (((a1 + an) * n)%/%2)
}

quantidadeImpares <- function(a, b){
    return (((b - a)%/%2) + 1)
}

input <- file('stdin', 'r')

N <- as.integer(readLines(input, n=1))
for(i in 1:N){
    entrada <- as.integer(strsplit(readLines(input, n=1), ' ')[[1]])
    X <- entrada[1]
    Y <- entrada[2]

    if(X > Y){
        temp <- X
        X <- Y
        Y <- temp
    }

    X <- X + ((abs(X) %% 2) + 1)
    Y <- Y - ((abs(Y) %% 2) + 1)

    if(X > Y){
        write(paste(0), '')
    }else{
        write(paste(somaPA(X, Y, quantidadeImpares(X, Y))), '')
    }
}