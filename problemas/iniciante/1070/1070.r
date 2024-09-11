input <- file('stdin', 'r')

N <- as.integer(readLines(input, n=1))
N <- N + (1 - (N %% 2))
for (i in 0:5){
    write(paste(N + (2 * i)), '')
}