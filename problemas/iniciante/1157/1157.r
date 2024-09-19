input <- file('stdin', 'r')

n <- as.integer(readLines(input, n=1))
for(i in 1:n){
    if(n %% i == 0){
        write(paste(i), '')
    }
}