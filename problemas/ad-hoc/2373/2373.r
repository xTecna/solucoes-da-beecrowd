input <- file('stdin', 'r')

n <- as.integer(readLines(input, n=1))

resposta <- 0
for (i in 1:n) {
    entrada <- as.integer(strsplit(readLines(input, n = 1), ' ')[[1]])
    latas <- entrada[1]
    copos <- entrada[2]

    if (latas > copos) {
        resposta <- resposta + copos
    }
}

write(paste(resposta), '')