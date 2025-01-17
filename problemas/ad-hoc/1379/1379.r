input <- file('stdin', 'r')

while(TRUE) {
    entrada <- as.integer(strsplit(readLines(input, n = 1), ' ')[[1]])
    a <- entrada[1]
    b <- entrada[2]

    if (a == 0 && b == 0) {
        break
    }

    write(paste(format(2 * a - b, scientific=FALSE)), '')
}