object Main {
    def main(args: Array[String]) {
        val container = io.StdIn.readLine().split(" ").map(_.toInt)
        val navio = io.StdIn.readLine().split(" ").map(_.toInt)

        var resposta = 1
        for (i <- 0 to 2) {
            resposta *= navio(i) / container(i)
        }

        println(resposta)
    }
}
