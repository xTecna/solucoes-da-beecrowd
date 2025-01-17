object Main {
    def main(args: Array[String]) {
        val t = io.StdIn.readLine().toInt

        for (i <- 1 to t) {
            val numeros = io.StdIn.readLine().split(" ").map(_.toInt)

            var n = numeros(0)
            var m = numeros(1)

            println((((n - 2) / 3.0).ceil * ((m - 2) / 3.0).ceil).toInt)
        }
    }
}
