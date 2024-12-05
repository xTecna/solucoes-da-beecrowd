input <- file('stdin', 'r')

entrada <- as.integer(strsplit(readLines(input, n = 1), ' ')[[1]])
h <- entrada[1]
p <- entrada[2]

write(paste(format(round(h / p, 2), nsmall = 2)), '')