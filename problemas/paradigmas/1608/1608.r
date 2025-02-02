input <- file("stdin", "r")

t <- as.integer(readLines(input, n = 1))

for (k in 1:t) {
  entrada <- as.integer(strsplit(readLines(input, n = 1), " ")[[1]])
  d <- entrada[1]
  b <- entrada[3]

  ingredientes <- as.integer(strsplit(readLines(input, n = 1), " ")[[1]])

  resposta <- 0
  for (i in 1:b) {
    bolo <- as.integer(strsplit(readLines(input, n = 1), " ")[[1]])

    custo <- 0
    for (j in 1:bolo[1]) {
      custo <- custo + ingredientes[bolo[2 * j] + 1] * bolo[2 * j + 1]
    }

    resposta <- max(resposta, d %/% custo)
  }

  write(paste(resposta), "")
}
