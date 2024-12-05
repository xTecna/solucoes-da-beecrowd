object Main {
    def somaPA(a1: Int, an: Int, n: Int): Int = {
        return (a1 + an) * n / 2
    }

    def main(args: Array[String]): Unit = {
        val t = io.StdIn.readLine().toInt

        for (i <- 1 to t) {
            val n = io.StdIn.readLine().toInt
            println(somaPA(1, n, n) + 1)
        }
    }
}
