input <- file("stdin", "r")

precos <- c(1.50, 2.50, 3.50, 4.50, 5.50)

p <- as.integer(readLines(input, n = 1))

soma <- 0.0
for (i in 1:p) {
  entrada <- as.integer(strsplit(readLines(input, n = 1), " ")[[1]])

  codigo <- entrada[1]
  q <- entrada[2]

  soma <- soma + precos[codigo - 1000] * q
}

write(paste(format(soma, nsmall = 2)), "")
