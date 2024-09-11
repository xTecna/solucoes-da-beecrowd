object Main {
    def main(args: Array[String]) {
        val x = io.StdIn.readLine().toInt
        val y = io.StdIn.readLine().toDouble

        printf("%.3f km/l\n", x/y)
    }
}
