object Main {
    def main(args: Array[String]) {
        var n = io.StdIn.readLine().toInt

        var conta = 7
        if (n > 100) {
            conta += 5 * (n - 100)
            n = 100
        }
        if (n > 30) {
            conta += 2 * (n - 30)
            n = 30
        }
        if (n > 10) {
            conta += n - 10
            n = 10
        }

        println(conta)
    }
}
