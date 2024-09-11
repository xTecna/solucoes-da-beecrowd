object Main {
    def fatorial(n: Int): Int = {
        if (n == 1) {
            1
        } else {
            n * fatorial(n - 1)
        }
    }

    def main(args: Array[String]): Unit = {
        val n = io.StdIn.readLine().toInt
        printf("%d\n", fatorial(n))
    }
}
