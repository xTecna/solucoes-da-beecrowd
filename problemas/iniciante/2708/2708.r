input <- file('stdin', 'r')

pessoas <- 0
jipes <- 0
while (TRUE) {
  entrada <- strsplit(readLines(input, n = 1), ' ')[[1]]

  if (entrada[1] == "ABEND") {
    break
  }

  numero <- as.integer(entrada[2])
  if (entrada[1] == "SALIDA") {
    pessoas <- pessoas + numero
    jipes <- jipes + 1
  } else {
    pessoas <- pessoas - numero
    jipes <- jipes - 1
  }
}

write(paste(pessoas), '')
write(paste(jipes), '')