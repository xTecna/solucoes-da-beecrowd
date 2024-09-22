input <- file('stdin', 'r')

n <- as.integer(readLines(input, n = 1))

resposta <- 0.0
if(n == 0) {
  resposta <- 1.0
} else if(n == 1) {
  resposta <- 1.0 + 1.0 / 2.0
} else {
  resposta <- 2.0
  for (i in 2:n) {
    resposta <- 2.0 + 1.0 / resposta
  }
  resposta <- 1.0 + 1.0 / resposta
}

write(paste(format(round(resposta, 10), nsmall=10)), '')