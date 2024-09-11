input <- file('stdin', 'r')

N <- as.integer(readLines(input, n=1))

for (i in 1:10){
    write(paste(i, 'x', N, '=', i * N), '')
}