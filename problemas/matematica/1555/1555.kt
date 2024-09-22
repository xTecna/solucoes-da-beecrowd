import java.lang.Math
import java.util.*

fun r(a: Int, b: Int): Int {
  return (9 * a * a) + (b * b)
}

fun b(a: Int, b: Int): Int {
  return 2 * (a * a) + (25 * b * b)
}

fun c(a: Int, b: Int): Int {
  return -100 * a + (b * b * b)
}

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

    val n = sc.nextInt()

    for (i in 1..n) {
      val x = sc.nextInt()
      val y = sc.nextInt()

      val rafael = r(x, y)
      val beto = b(x, y)
      val carlos = c(x, y)

      if (rafael > beto && rafael > carlos) {
        println("Rafael ganhou")
      } else if (beto > rafael && beto > carlos) {
        println("Beto ganhou")
      } else {
        println("Carlos ganhou")
      }
    }
}
