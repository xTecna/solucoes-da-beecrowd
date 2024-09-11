F <- rep(-1, 13)
F[1] = 1

fatorial <- function(x){
    if(F[x] == -1){
        F[x] = x * fatorial(x - 1)
    }
    return (F[x])
}

input <- file('stdin', 'r')

N <- as.integer(readLines(input, n=1))
write(paste(fatorial(N)), '')