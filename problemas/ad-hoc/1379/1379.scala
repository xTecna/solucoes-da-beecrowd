object Main {
    def main(args: Array[String]) {
        var entrada = io.StdIn.readLine().split(" ").map(_.toInt)
        while (entrada(0) != 0 && entrada(1) != 0) {
            println(2 * entrada(0) - entrada(1))

            entrada = io.StdIn.readLine().split(" ").map(_.toInt)
        }
    }
}
