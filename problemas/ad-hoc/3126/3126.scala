object Main {
    def main(args: Array[String]) {
        val C = io.StdIn.readLine().toInt
        val numeros = io.StdIn.readLine().trim.split(" ").map(_.toInt)

        var resposta = 0
        for (i <- 0 to (C - 1)) {
            resposta += numeros(i)
        }

        println(resposta)
    }
}
