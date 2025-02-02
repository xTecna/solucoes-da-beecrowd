object Main {
    def main(args: Array[String]) {
        var n = io.StdIn.readLine().toInt
        while(n != 0) {

            var menor_ano = 3000
            var resposta = ""
            for (i <- 1 to n) {
                val entrada = io.StdIn.readLine().split(" ")
                val ano = entrada(1).toInt
                val t = entrada(2).toInt

                if (ano - t <= menor_ano) {
                    menor_ano = ano - t
                    resposta = entrada(0)
                }
            }

            println(resposta)
            n = io.StdIn.readLine().toInt
        }
    }
}
