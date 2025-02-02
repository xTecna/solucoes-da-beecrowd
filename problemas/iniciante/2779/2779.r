input <- file('stdin', 'r')

n <- as.integer(readLines(input, n = 1))
m <- as.integer(readLines(input, n = 1))

figurinhas <- array(FALSE, dim = c(n + 1))
for (i in 1:m) {
  x <- as.integer(readLines(input, n = 1))
  figurinhas[x] <- TRUE
}

contador <- 0
for (i in 1:n) {
  if (figurinhas[i] == FALSE) {
    contador <- contador + 1
  }
}

write(paste(contador), '')