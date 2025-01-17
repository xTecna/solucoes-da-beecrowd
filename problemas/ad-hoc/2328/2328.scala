object Main {
    def main(args: Array[String]) {
        val n = io.StdIn.readLine().toInt
        val numeros = io.StdIn.readLine().split(" ").map(_.toInt)

        var resposta = 0
        for (i <- 0 to n - 1) {
            resposta += numeros(i)
        }

        println(resposta - n)
    }
}
