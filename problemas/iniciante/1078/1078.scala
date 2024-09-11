object Main {
    def main(args: Array[String]) {
        val n = io.StdIn.readLine().toInt

        for(i <- 1 to 10){
            printf("%d x %d = %d\n", i, n, i * n)
        }
    }
}
