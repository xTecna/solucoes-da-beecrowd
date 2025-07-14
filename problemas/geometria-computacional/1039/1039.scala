object Main {
    def dist(x1: Int, y1: Int, x2: Int, y2: Int): Double = {
        return math.sqrt((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2))
    }

    def main(args: Array[String]) {
        var linha: String = null
        while ({ linha = io.StdIn.readLine(); linha != null }) {
            val numeros = linha.split(" ").map(_.toInt)
            val r1 = numeros(0)
            val x1 = numeros(1)
            val y1 = numeros(2)
            val r2 = numeros(3)
            val x2 = numeros(4)
            val y2 = numeros(5)

            if (dist(x1, y1, x2, y2) <= (r1 - r2).toDouble) {
                printf("RICO\n")
            } else {
                printf("MORTO\n")
            }
        }
    }
}
