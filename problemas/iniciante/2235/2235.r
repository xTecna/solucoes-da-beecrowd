input <- file('stdin', 'r')

entrada <- as.integer(strsplit(readLines(input, n = 1), ' ')[[1]])
a <- entrada[1]
b <- entrada[2]
c <- entrada[3]

if (a == b || a == c || b == c || (a + b) == c || (a + c) == b || (b + c) == a) {
  write(paste('S'), '')
} else {
  write(paste('N'), '')
}