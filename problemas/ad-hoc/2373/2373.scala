object Main {
    def main(args: Array[String]) {
        val n = io.StdIn.readLine().toInt

        var resposta = 0
        for (i <- 1 to n) {
            val numeros = io.StdIn.readLine().trim.split(" ").map(_.toInt)
            val latas = numeros(0)
            var copos = numeros(1)

            if (latas > copos) {
                resposta += copos
            }
        }

        println(resposta)
    }
}
