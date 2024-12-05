input <- file('stdin', 'r')

for (i in 97:122) {
  write(paste(i, 'e', intToUtf8(i)), '')
}