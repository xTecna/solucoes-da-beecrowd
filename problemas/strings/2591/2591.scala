object Main {
    def main(args: Array[String]) {
        val c = io.StdIn.readLine().toInt

        for (i <- 1 to c) {
            val hamekame = io.StdIn.readLine()

            var conta = -1
            var a = Array(0, 0)
            for (k <- 1 to hamekame.length - 1) {
                if (hamekame(k) == 'a') {
                    if (hamekame(k - 1) != 'a') {
                        conta += 1;
                    }
                    a(conta) += 1
                }
            }

            print('k')
            for (i <- 1 to a(0) * a(1)) {
                print('a')
            }
            println("")
        }
    }
}
