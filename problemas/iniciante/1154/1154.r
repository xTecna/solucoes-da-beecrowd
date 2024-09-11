input <- file('stdin', 'r')

media <- 0
pessoas <- 0
idade <- as.integer(readLines(input, n=1))
while(idade > 0){
    media <- media + idade
    pessoas <- pessoas + 1
    idade <- as.integer(readLines(input, n=1))
}

media <- media / pessoas

write(paste(format(round(media, 2), nsmall=2)), '')