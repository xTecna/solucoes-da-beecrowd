object Main {
    def main(args: Array[String]) {
        val cartas = Array("Q", "J", "K", "A")
        val n = io.StdIn.readLine().toInt

        for (i <- 1 to n) {
            val entrada = io.StdIn.readLine()

            var resposta = true
            for (j <- 0 to 3) {
                resposta &= (entrada contains cartas(j))
            }

            if (resposta) {
                println("Aaah muleke")
            } else {
                println("Ooo raca viu")
            }
        }
    }
}
