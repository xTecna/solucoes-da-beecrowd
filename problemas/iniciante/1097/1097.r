input <- file('stdin', 'r')

for(i in 0:4){
    for(j in 0:2){
        write(paste(paste('I=', (2 * i) + 1, sep=''), paste('J=', 7 + (2 * i) - j, sep='')), '')
    }
}