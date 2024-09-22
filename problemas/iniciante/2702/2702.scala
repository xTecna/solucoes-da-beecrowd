import scala.math.max

object Main {
  def main(args: Array[String]): Unit = {
    var entrada = io.StdIn.readLine().split(" ")
    val ca = entrada(0).toInt
    val ba = entrada(1).toInt
    val pa = entrada(2).toInt

    entrada = io.StdIn.readLine().split(" ")
    val cr = entrada(0).toInt
    val br = entrada(1).toInt
    val pr = entrada(2).toInt

    printf("%d\n", max(cr - ca, 0) + max(br - ba, 0) + max(pr - pa, 0))
  }
}
