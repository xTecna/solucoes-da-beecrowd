object Main {
    def main(args: Array[String]) {
        val B = io.StdIn.readLine().toInt
        val T = io.StdIn.readLine().toInt

        if (B + T > 160) {
            println(1)
        } else if (B + T < 160) {
            println(2)
        } else {
            println(0)
        }
    }
}
