input <- file('stdin', 'r')

while (TRUE) {
  entrada <- as.integer(strsplit(readLines(input, n = 1), ' ')[[1]])
  m <- entrada[1]
  n <- entrada[2]

  if (m == 0 && n == 0) {
    break
  }

  soma <- as.character(m + n)
  soma <- gsub('0', '', soma)
  write(paste(soma), '')
}