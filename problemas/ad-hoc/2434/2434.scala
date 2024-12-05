object Main {
    def main(args: Array[String]) {
        val numeros = io.StdIn.readLine().trim.split(" ").map(_.toInt)
        val n = numeros(0)
        var saldo = numeros(1)

        var resposta = saldo
        for (i <- 1 to n) {
            val movimentacao = io.StdIn.readLine().toInt
            saldo += movimentacao
            resposta = resposta.min(saldo)
        }

        println(resposta)
    }
}
