input <- file('stdin', 'r')

somaPA <- function(a1, an, n){
  return(((a1 + an) * n)/2)
}

t <- as.integer(readLines(input, n=1))
for(k in 1:t){
  entrada <- as.integer(strsplit(readLines(input, n=1), ' ')[[1]])
  x <- entrada[1]
  y <- entrada[2]

  x <- x + 1 - (x %% 2)

  write(paste(somaPA(x, x + 2 * (y - 1), y)), '')
}