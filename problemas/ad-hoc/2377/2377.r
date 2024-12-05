input <- file('stdin', 'r')

entrada <- as.integer(strsplit(readLines(input, n = 1), ' ')[[1]])
l <- entrada[1]
d <- entrada[2]

entrada <- as.integer(strsplit(readLines(input, n = 1), ' ')[[1]])
k <- entrada[1]
p <- entrada[2]

write(paste(format(k * l + p * floor(l / d), scientific=FALSE)), '')