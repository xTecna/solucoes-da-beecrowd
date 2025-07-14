input <- file('stdin', 'r')

entrada <- as.integer(strsplit(readLines(input, n = 1), ' ')[[1]])
r <- entrada[1]
l <- entrada[2]

pi <- 3.1415
v <- (4.0 * pi * r * r * r) / 3.0

write(paste(floor(l / v)), '')