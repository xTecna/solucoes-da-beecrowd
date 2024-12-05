input <- file('stdin', 'r')

n <- as.integer(readLines(input, n = 1))

vitorias <- 0
for (i in 1:n) {
  x <- as.integer(readLines(input, n = 1))
  if (x != 1) {
    vitorias <- vitorias + 1
  }
}

write(paste(vitorias), '')