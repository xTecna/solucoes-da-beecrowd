object Main {
    def main(args: Array[String]) {
        val n = io.StdIn.readLine().toInt
        for (i <- 1 to 4 * n by 4) {
            printf("%d %d %d PUM\n", i, i + 1, i + 2)
        }
    }
}
