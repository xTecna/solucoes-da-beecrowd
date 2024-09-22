import scala.util.control.Breaks._

object Main {
  def main(args: Array[String]): Unit = {
    breakable {
      while (true) {
        val entrada = io.StdIn.readLine().split(" ")
        val x = entrada(0).toInt
        val m = entrada(1).toInt

        if (x == 0 && m == 0) {
          break
        }

        printf("%d\n", x * m)
      }
    }
  }
}
