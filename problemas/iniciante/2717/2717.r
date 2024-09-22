input <- file('stdin', 'r')

n <- as.integer(readLines(input, n = 1))
entrada <- as.integer(strsplit(readLines(input, n = 1), ' ')[[1]])
a <- entrada[1]
b <- entrada[2]

if(a + b <= n) {
  write(paste('Farei hoje!'), '')
}else{
  write(paste('Deixa para amanha!'), '')
}