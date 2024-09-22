converteParaDecimal <- function(x) {
  fatoriais <- c(1, 2, 6, 24, 120)
  digitos <- as.integer(strsplit(x, "")[[1]])
  potencia <- rev(seq_along(digitos))
  resposta <- sum(digitos * fatoriais[potencia])
  return(resposta)
}

input <- readLines("stdin")
results <- numeric(length(input) - 1)
for (i in 1:(length(input) - 1)) {
  results[i] <- converteParaDecimal(input[i])
}
writeLines(as.character(results))
