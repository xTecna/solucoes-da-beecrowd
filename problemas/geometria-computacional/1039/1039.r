input <- file('stdin', 'r')

distancia <- function(x1, y1, x2, y2) {
    return(sqrt((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2)))
}

while (TRUE) {
    tryCatch({
        linha <- readLines(input, n = 1)

        if (length(linha) > 0) {
            entrada <- as.double(strsplit(linha, ' ')[[1]])
            r1 <- entrada[1]
            x1 <- entrada[2]
            y1 <- entrada[3]
            r2 <- entrada[4]
            x2 <- entrada[5]
            y2 <- entrada[6]

            dist <- distancia(x1, y1, x2, y2)
            if (dist <= r1 - r2) {
                write(paste('RICO'), '')
            } else {
                write(paste('MORTO'), '')
            }
        } else {
            break
        }
    }, error = function(e) {
        break
    })
}