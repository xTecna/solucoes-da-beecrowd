input <- file('stdin', 'r')

N <- as.integer(readLines(input, n=1))
for(i in 1:N){
    inicio = 1 + (4 * (i - 1))
    write(paste(cat(inicio:(inicio + 2)), 'PUM'), '')
}