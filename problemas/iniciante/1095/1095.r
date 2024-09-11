input <- file('stdin', 'r')

for(i in 0:12){
    write(paste(paste('I=', (3 * i) + 1, sep=''), paste('J=', 60 - (5 * i), sep='')), '')
}