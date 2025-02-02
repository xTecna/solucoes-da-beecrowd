import scala.math._

object Main {
    def main(args: Array[String]) {
        val pi = 3.141592654

        var entrada: String = null
        while ({ entrada = scala.io.StdIn.readLine(); entrada != null }) {
            val numeros = entrada.split(" ").map(_.toDouble)
            val angulo = numeros(0) * pi / 180.0

            printf("%.2f\n", 5 * (tan(angulo) * numeros(1) + numeros(2)))
        }
    }
}
