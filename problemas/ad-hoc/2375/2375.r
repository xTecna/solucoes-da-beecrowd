input <- file('stdin', 'r')

diametro <- as.integer(readLines(input, n=1))

entrada <- as.integer(strsplit(readLines(input, n = 1), ' ')[[1]])
altura <- entrada[1]
largura <- entrada[2]
profundidade <- entrada[3]

if (diametro <= altura && diametro <= largura && diametro <= profundidade) {
    write(paste('S'), '')
} else {
    write(paste('N'), '')
}