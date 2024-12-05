input <- file('stdin', 'r')

curupira <- as.integer(readLines(input, n = 1))
boitata <- as.integer(readLines(input, n = 1))
boto <- as.integer(readLines(input, n = 1))
mapinguari <- as.integer(readLines(input, n = 1))
iara <- as.integer(readLines(input, n = 1))

write(paste(225 + 300 * curupira + 1500 * boitata + 600 * boto + 1000 * mapinguari + 150 * iara), '')