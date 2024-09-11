input <- file('stdin', 'r')

somaPA <- function(a1, an, n){
  return(((a1 + an) * n)/2)
}

entrada <- as.integer(strsplit(readLines(input, n = 1), ' ')[[1]])
a <- entrada[1]
i <- 2
while(entrada[i] <= 0) {
  i <- i + 1
}
n <- entrada[i]

write(paste(somaPA(a, a + n - 1, n)), '')