input <- file('stdin', 'r')

entrada <- as.integer(strsplit(readLines(input, n = 1), ' ')[[1]])

cv <- entrada[1]
ce <- entrada[2]
cs <- entrada[3]
fv <- entrada[4]
fe <- entrada[5]
fs <- entrada[6]

cp <- 10000 * (3 * cv + ce) + cs
fp <- 10000 * (3 * fv + fe) + fs

if (cp > fp) {
    write(paste("C"), '')
} else if (fp > cp) {
    write(paste("F"), '')
} else {
    write(paste("="), '')
}