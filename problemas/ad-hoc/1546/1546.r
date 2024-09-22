input <- file('stdin', 'r')

nomes <- c("Rolien", "Naej", "Elehcim", "Odranoel")

n <- as.integer(readLines(input, n = 1))
for(i in 1:n) {
  k <- as.integer(readLines(input, n = 1))
  for(j in 1:k) {
    feedback <- as.integer(readLines(input, n = 1))
    write(paste(nomes[feedback]), '')
  }
}