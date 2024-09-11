input <- file('stdin', 'r')

x <- as.integer(readLines(input, n = 1))
z <- x
while (z <= x) {
  z <- as.integer(readLines(input, n = 1))
}

soma <- x
resposta <- 1
while (soma <= z) {
  soma <- soma + x + resposta
  resposta <- resposta + 1
}

write(paste(resposta), '')