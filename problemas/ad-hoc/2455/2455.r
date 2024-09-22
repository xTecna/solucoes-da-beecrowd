input <- file('stdin', 'r')

entrada <- as.integer(strsplit(readLines(input, n = 1), ' ')[[1]])
p1 <- entrada[1]
c1 <- entrada[2]
p2 <- entrada[3]
c2 <- entrada[4]

diferenca <- p2 * c2 - p1 * c1

if (diferenca < 0) {
  write(paste(-1), '')
} else if (diferenca == 0) {
  write(paste(0), '')
} else {
  write(paste(1), '')
}