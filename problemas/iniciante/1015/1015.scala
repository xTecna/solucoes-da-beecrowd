object Main {
    def main(args: Array[String]) {
        var entrada = io.StdIn.readLine().split(" ")
        val x1 = entrada(0).toDouble
        val y1 = entrada(1).toDouble

        entrada = io.StdIn.readLine().split(" ")
        val x2 = entrada(0).toDouble
        val y2 = entrada(1).toDouble

        printf("%.4f\n", math.sqrt((x2 - x1) * (x2 - x1) + (y2 - y1) * (y2 - y1)))
    }
}
