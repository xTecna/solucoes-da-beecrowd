object Main {
    def main(args: Array[String]) {
        val n = io.StdIn.readLine().toInt
        val numeros = io.StdIn.readLine().split(" ").map(_.toInt)

        var resposta = true
        for (i <- 0 to 2) {
            resposta &= (numeros(i) >= n)
        }

        if (resposta) {
            println("S")
        } else {
            println("N")
        }
    }
}
