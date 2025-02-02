object Main {
    def main(args: Array[String]) {
        val c = io.StdIn.readLine().toInt

        for (i <- 1 to c) {
            val numeros = io.StdIn.readLine().split(" ").map(_.toInt)

            val sb = new StringBuilder()
            for (k <- numeros(0) to numeros(1)) {
                sb.append(k.toString)
            }
            for (k <- numeros(1) to numeros(0) by -1) {
                sb.append(k.toString.reverse)
            }
            println(sb.toString())
        }
    }
}
