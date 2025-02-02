input <- file('stdin', 'r')

n <- as.integer(readLines(input, n = 1))

for (i in 1:n) {
  entrada <- as.integer(strsplit(readLines(input, n = 1), ' ')[[1]])
  altura <- entrada[1]
  espessura <- entrada[2]
  galhos <- entrada[3]

  if (200 <= altura && altura <= 300 && 50 <= espessura && 150 <= galhos) {
    write(paste('Sim'), '')
  } else {
    write(paste('Nao'), '')    
  }
}