object Main {
    def main(args: Array[String]) {
        val n = io.StdIn.readLine().toInt

        var resposta = 1000000.0
        for (i <- 1 to n) {
            val numeros = io.StdIn.readLine().split(" ").map(_.toDouble)
            resposta = resposta.min(numeros(0) / numeros(1))
        }

        printf("%.2f\n", resposta * 1000.0)
    }
}
