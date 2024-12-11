input <- file('stdin', 'r')

n <- as.integer(readLines(input, n=1))
for (i in 1:n) {
    cartas <- readLines(input, n=1)

    if(grepl('A', cartas) && grepl('K', cartas) && grepl('Q', cartas) && grepl('K', cartas)) {
        write(paste('Aaah muleke'), '')
    } else {
        write(paste('Ooo raca viu'), '')
    }
}