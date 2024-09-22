import scala.math.max

object Main {
  def main(args: Array[String]): Unit = {
    val numeros = io.StdIn.readLine().split(" ").map(_.toInt)
    printf("%d\n", math.max(numeros(0), numeros(1)))
  }
}
