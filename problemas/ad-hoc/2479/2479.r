input <- file('stdin', 'r')

n <- as.integer(readLines(input, n = 1))

levadas = 0
comportadas = 0
criancas <- c()
for(i in 1:n){
  palavras <- strsplit(readLines(input, n = 1), ' ')[[1]]

  if (palavras[1] == '+') {
    comportadas <- comportadas + 1
  } else {
    levadas <- levadas + 1
  }

  criancas <- c(criancas, palavras[2])
}
criancas <- sort(criancas)

for(i in 1:n){
  write(paste(criancas[i]), '')
}
write(paste('Se comportaram:', comportadas, '| Nao se comportaram:', levadas), '')