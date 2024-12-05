input <- file('stdin', 'r')

n <- as.integer(readLines(input, n = 1))
resposta <- 'Feliz nat'
for (i in 1:n) {
  resposta <- paste(resposta, 'a', sep='')
}
resposta <- paste(resposta, 'l!', sep = '')

write(resposta, '')