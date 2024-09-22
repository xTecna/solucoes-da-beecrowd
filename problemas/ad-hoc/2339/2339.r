input <- file('stdin', 'r')

entrada <- as.integer(strsplit(readLines(input, n = 1), ' ')[[1]])
c <- entrada[1]
p <- entrada[2]
f <- entrada[3]

if (p >= c * f) {
  write(paste('S'), '')
} else {
  write(paste('N'), '')
}