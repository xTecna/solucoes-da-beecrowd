import scala.util.control.Breaks._

object Main {
  val F: Array[Int] = Array.fill(101)(-1)
  
  def feynman(n: Int): Int = {
    if (F(n) == -1) {
      F(n) = feynman(n - 1) + (n * n)
    }
    F(n)
  }

  def main(args: Array[String]): Unit = {
    F(1) = 1

    breakable {
      while (true) {
        val n = io.StdIn.readLine().toInt
        if (n == 0) {
          break
        }
        printf("%d\n", feynman(n))
      }
    }
  }
}
