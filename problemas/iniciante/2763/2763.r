input <- file('stdin', 'r')

entrada <- strsplit(readLines(input, n = 1), '[\\.-]')[[1]]

write(paste(entrada[1]), '')
write(paste(entrada[2]), '')
write(paste(entrada[3]), '')
write(paste(entrada[4]), '')
