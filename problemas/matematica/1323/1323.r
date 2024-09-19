F <- rep(-1, 101)
F[1] = 1

feynman <- function(x){
  if(F[x] == -1){
    F[x] = feynman(x - 1) + (x * x)
  }
  return (F[x])
}

input <- file('stdin', 'r')

while (TRUE) {
  n <- as.integer(readLines(input, n = 1))

  if (n == 0) {
    break
  }

  write(paste(feynman(n)), '')
}