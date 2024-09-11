input <- file('stdin', 'r')

N <- as.integer(readLines(input, n=1))

for(i in 1:N){
    valores <- as.double(strsplit(readLines(input, n=1), ' ')[[1]])
    media <- (2 * valores[1] + 3 * valores[2] + 5 * valores[3])/10
    write(paste(format(round(media, 1), nsmall=1)), '')
}