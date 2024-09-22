input <- file('stdin', 'r')

s <- readLines(input, n = 1)

soma <- 0
for(i in 1:nchar(s)) {
  soma <- soma + as.integer(substr(s, i, i))
}

write(paste(s, (soma %% 2), sep=''), '')