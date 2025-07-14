import scala.util.control.Breaks._

object Main {
    def dist(x1: Int, y1: Int, x2: Int, y2: Int): Double = {
        return math.sqrt((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2))
    }

    def main(args: Array[String]) {
        breakable {
            while (true) {
                val numeros = io.StdIn.readLine().split(" ").map(_.toInt)
                val l = numeros(0)
                val c = numeros(1)
                val r1 = numeros(2)
                val r2 = numeros(3)
                if (l == 0 && c == 0 && r1 == 0 && r2 == 0) {
                    break
                }

                val x1 = r1
                val y1 = r1
                val x2 = l - r2
                val y2 = c - r2
                val distancia = dist(x1, y1, x2, y2)

                if (l < 2 * r1 || c < 2 * r1 || l < 2 * r2 || c < 2 * r2 || distancia < (r1 + r2).toDouble) {
                    printf("N\n")
                } else {
                    printf("S\n")
                }
            }
        }
    }
}
