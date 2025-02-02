input <- file('stdin', 'r')

n <- as.integer(readLines(input, n=1))

mesas <- c()
for(i in 1:n) {
    mesas <- c(mesas, i)
}

q <- as.integer(readLines(input, n=1))
for(i in 1:q) {
    entrada <- as.integer(strsplit(readLines(input, n = 1), ' ')[[1]])
    comando <- entrada[1]

    if (comando == 1) {
        a <- entrada[2]
        b <- entrada[3]

        temp <- mesas[a]
        mesas[a] <- mesas[b]
        mesas[b] <- temp
    } else {
        a <- entrada[2]

        resposta <- 0
        mesa <- mesas[a]
        while(mesa != a) {
            resposta <- resposta + 1
            mesa <- mesas[mesa]
        }

        write(paste(resposta), '')
    }
}