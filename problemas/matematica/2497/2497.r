input <- file('stdin', 'r')

teste <- 1
while (TRUE) {
    n <- as.integer(readLines(input, n=1))
    if (n == -1) {
        break
    }

    write(paste0("Experiment ", teste, ": ", n %/% 2, " full cycle(s)"), '')
    teste <- teste + 1
}