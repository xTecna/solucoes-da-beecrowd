input <- file('stdin', 'r')

for(i in 0:4){
    for(j in seq(7, 5, by=-1)){
        write(paste(paste('I=', (2 * i) + 1, sep=''), paste('J=', j, sep='')), '')
    }
}