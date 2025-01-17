input <- file('stdin', 'r')

t <- as.integer(readLines(input, n=1))

for(i in 1:t) {
    entrada <- as.integer(strsplit(readLines(input, n = 1), ' ')[[1]])
    n <- entrada[1]
    m <- entrada[2]

    cat(format(ceiling((n - 2) / 3.0) * ceiling((m - 2) / 3.0), scientific=FALSE))
    cat('\n')
}