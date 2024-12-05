object Main {
    def main(args: Array[String]) {
        val numeros = io.StdIn.readLine().split(" ").map(_.toInt)

        var maior = numeros(0)
        for (i <- 1 to (numeros.length - 1)) {
            maior = maior.max(numeros(i))
        }

        println(maior)
    }
}
