input <- file('stdin', 'r')

n <- as.integer(readLines(input, n=1))

resposta <- 0
anterior <- -1
for(i in 1:n) {
    atual <- as.integer(readLines(input, n=1))

    if(atual != anterior) {
        anterior <- atual
        resposta <- resposta + 1
    }
}

write(paste(resposta), '')