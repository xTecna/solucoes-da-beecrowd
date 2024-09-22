input <- file('stdin', 'r')

n <- as.integer(readLines(input, n = 1))
while (n > 0) {
  jogador1 <- 0
  jogador2 <- 0
  for(i in 1:n) {
    entrada <- as.integer(strsplit(readLines(input, n = 1), ' ')[[1]])
    a <- entrada[1]
    b <- entrada[2]

    if(a > b) {
      jogador1 <- jogador1 + 1
    } else if(a < b) {
      jogador2 <- jogador2 + 1
    }
  }

  write(paste(jogador1, jogador2), '')

  n <- as.integer(readLines(input, n = 1))
}
