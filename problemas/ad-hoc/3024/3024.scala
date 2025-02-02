object Main {
    def main(args: Array[String]) {
        var entrada = io.StdIn.readLine().split(" ").map(_.toInt)
        val n = entrada(0)
        val x = entrada(1)

        var resposta = 1
        var acumulado = 1
        entrada = io.StdIn.readLine().split(" ").map(_.toInt)
        for (i <- 1 to n - 1) {
            if (entrada(i) > entrada(i - 1) + x) {
                resposta = resposta.max(acumulado)
                acumulado = 1
            } else {
                acumulado += 1
            }
        }
        resposta = resposta.max(acumulado)

        println(resposta)
    }
}
