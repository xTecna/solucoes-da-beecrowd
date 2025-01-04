object Main {
    def main(args: Array[String]) {
        var k = 1
        var n = io.StdIn.readLine().toInt
        while (n != -1) {
            printf("Experiment %d: %d full cycle(s)\n", k, n / 2)

            k += 1
            n = io.StdIn.readLine().toInt
        }
    }
}
