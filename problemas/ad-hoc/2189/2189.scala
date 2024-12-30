object Main {
    def main(args: Array[String]) {
        var k = 1
        var n = io.StdIn.readLine().toInt
        while (n != 0) {
            val ingressos = io.StdIn.readLine().split(" ").map(_.toInt)
            
            var resposta = 0
            for (i <- 0 to n - 1) {
                if (ingressos(i) == i + 1) {
                    resposta = i + 1
                }
            }

            printf("Teste %d\n", k)
            println(resposta)
            println("")

            n = io.StdIn.readLine().toInt
            k += 1
        }
    }
}
