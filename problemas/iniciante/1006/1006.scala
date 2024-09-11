object Main {
    def main(args: Array[String]) {
        val A = io.StdIn.readLine().toDouble
        val B = io.StdIn.readLine().toDouble
        val C = io.StdIn.readLine().toDouble

        printf("MEDIA = %.1f\n", (2 * A + 3 * B + 5 * C)/10)
    }
}
