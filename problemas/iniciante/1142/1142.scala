object Main {
    def main(args: Array[String]) {
        val n = io.StdIn.readLine().toInt
        for (i <- 1 to n) {
            val x = 1 + 4 * (i - 1)
            printf("%d %d %d PUM\n", x, x + 1, x + 2)
        }
    }
}
