options(scipen=4000001)

input <- file('stdin', 'r')

N <- as.integer(readLines(input, n=1))
N <- N - (N %% 2)
for (i in seq(2, N, by=2)){
    write(paste(paste(i, '^2 =', sep=''), i * i), '')
}