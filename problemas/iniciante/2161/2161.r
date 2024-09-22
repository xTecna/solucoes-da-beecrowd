input <- file('stdin', 'r')

n <- as.integer(readLines(input, n = 1))

resposta <- 0.0
if(n == 0) {
  resposta <- 3.0
} else if(n == 1) {
  resposta <- 3.0 + 1.0 / 6.0
} else {
  resposta <- 6.0
  for (i in 2:n) {
    resposta <- 6.0 + 1.0 / resposta
  }
  resposta <- 3.0 + 1.0 / resposta
}

write(paste(format(round(resposta, 10), nsmall=10)), '')