input <- file('stdin', 'r')

n <- as.integer(readLines(input, n=1))

for(i in 1:n) {
    palavra1 <- readLines(input, n=1)
    palavra2 <- readLines(input, n=1)
    secreta <- readLines(input, n=1)

    pos1 <- regexpr('_', secreta)
    pos2 <- pos1 + regexpr('_', substring(secreta, pos1 + 1, nchar(secreta)))

    letra11 <- substring(palavra1, pos1, pos1)
    letra12 <- substring(palavra1, pos2, pos2)
    letra21 <- substring(palavra2, pos1, pos1)
    letra22 <- substring(palavra2, pos2, pos2)

    if(letra11 == letra22 || letra12 == letra21) {
        write(paste('Y'), '')
    } else {
        write(paste('N'), '')
    }
}