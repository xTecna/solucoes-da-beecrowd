input <- file('stdin', 'r')

entrada <- as.integer(strsplit(readLines(input, n = 1), ' ')[[1]])
n <- entrada[1]
x <- entrada[2]
y <- entrada[3]

write(paste(format(round(n/(x + y), 2), nsmall=2)), '')