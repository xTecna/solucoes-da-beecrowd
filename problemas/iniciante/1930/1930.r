input <- file('stdin', 'r')

entrada <- as.integer(strsplit(readLines(input, n = 1), ' ')[[1]])
soma <- 0
for(i in 1:4) {
  soma <- soma + entrada[i]
}
write(paste(soma - 3), '')