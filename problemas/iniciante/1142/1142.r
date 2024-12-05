input <- file('stdin', 'r')

N <- as.integer(readLines(input, n=1))
for(i in seq(1, 4*N, by=4)){
    write(paste(i, i + 1, i + 2, 'PUM'), '')
}