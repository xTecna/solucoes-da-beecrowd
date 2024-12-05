object Main {
    def main(args: Array[String]) {
        val n = io.StdIn.readLine().toInt

        var resposta = 0
        var acumulado = 0
        var anterior = -1
        for  (i <- 1 to n) {
            val atual = io.StdIn.readLine().toInt

            if(atual != anterior) {
                acumulado += 1
                anterior = atual
                resposta = resposta.max(acumulado)
            }
        }

        println(resposta)
    }
}
