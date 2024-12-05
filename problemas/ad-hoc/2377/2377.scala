object Main {
    def main(args: Array[String]) {
        var entrada = io.StdIn.readLine().split(" ").map(_.toInt)
        val l = entrada(0)
        val d = entrada(1)

        entrada = io.StdIn.readLine().split(" ").map(_.toInt)
        val k = entrada(0)
        val p = entrada(1)

        println((l / d) * p + l * k)
    }
}
