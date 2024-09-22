input <- file('stdin', 'r')

n <- as.integer(readLines(input, n = 1))

entrada <- as.integer(strsplit(readLines(input, n = 1), ' ')[[1]])
la <- entrada[1]
lb <- entrada[2]

entrada <- as.integer(strsplit(readLines(input, n = 1), ' ')[[1]])
sa <- entrada[1]
sb <- entrada[2]

if (la <= n && n <= lb && sa <= n && n <= sb) {
  write(paste('possivel'), '')
} else {
  write(paste('impossivel'), '')
}