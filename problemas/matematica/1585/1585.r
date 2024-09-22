input <- file('stdin', 'r')

n <- as.integer(readLines(input, n = 1))
for(i in 1:n) {
  entrada <- as.integer(strsplit(readLines(input, n = 1), ' ')[[1]])
  x <- entrada[1]
  y <- entrada[2]

  write(paste((x * y) %/% 2, 'cm2'), '')
}