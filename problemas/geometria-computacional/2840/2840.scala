import scala.math.floor

object Main {
  def main(args: Array[String]): Unit = {
    val numeros = io.StdIn.readLine().split(" ").map(_.toInt)
    val r = numeros(0)
    val l = numeros(1)

    val pi = 3.1415
    val v = (4.0 * pi * r * r * r) / 3.0
    
    printf("%d\n", floor(l / v).toInt)
  }
}