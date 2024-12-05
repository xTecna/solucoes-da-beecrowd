input <- file('stdin', 'r')

somaPA <- function(a1, an, n) {
    return((n * (a1 + an)) / 2)
}

t <- as.integer(readLines(input, n=1))

for(i in 1:t){
    n <- as.integer(readLines(input, n=1))
    write(paste(somaPA(1, n, n) + 1), '')
}