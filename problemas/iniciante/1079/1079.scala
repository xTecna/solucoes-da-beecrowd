object Main {
    def main(args: Array[String]) {
        val n = io.StdIn.readLine().toInt

        for (i <- 1 to n){
            val notas = io.StdIn.readLine().split(" ").map(_.toFloat)
            val media = (2 * notas(0) + 3 * notas(1) + 5 * notas(2))/10
            printf("%.1f\n", media)
        }
    }
}
