object Main {
    def main(args: Array[String]) {
        for (i <- 1 to 9 by 2){
            for (j <- 0 to 2){
                printf("I=%d J=%d\n", i, 6 + i - j)
            }
        }
    }
}
