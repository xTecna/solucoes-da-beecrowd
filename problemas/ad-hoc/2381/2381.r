input <- file('stdin', 'r')

entrada <- as.integer(strsplit(readLines(input, n = 1), ' ')[[1]])
n <- entrada[1]
k <- entrada[2]

alunos <- c()
for(i in 1:n){
  alunos <- c(alunos, readLines(input, n = 1))
}
alunos <- sort(alunos)
write(paste(alunos[k]), '')