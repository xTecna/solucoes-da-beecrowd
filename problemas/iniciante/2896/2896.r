input <- file('stdin', 'r')

n <- as.integer(readLines(input, n = 1))

for (i in 1:n) {
  entrada <- as.integer(strsplit(readLines(input, n = 1), ' ')[[1]])
  n <- entrada[1]
  k <- entrada[2]

  write(paste(n %/% k + n %% k), '')
}