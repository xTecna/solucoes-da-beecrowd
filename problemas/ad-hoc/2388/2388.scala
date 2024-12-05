object Main {
    def main(args: Array[String]) {
        val n = io.StdIn.readLine().toInt

        var resposta = 0
        for (i <- 1 to n) {
            val entrada = io.StdIn.readLine().split(" ").map(_.toInt)
            resposta += entrada(0) * entrada(1)
        }

        println(resposta)
    }
}
