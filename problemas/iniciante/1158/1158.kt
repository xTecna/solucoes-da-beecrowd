import java.util.*
import java.lang.Math

fun somaPA(a1: Long, an: Long, n: Long): Long {
  return ((a1 + an) * n) / 2
}

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  val n: Int = sc.nextInt()
  for (i in 1..n) {
    var x: Long = sc.nextLong()
    var y: Long = sc.nextLong()

    x += 1 - (Math.abs(x) % 2)

    println(somaPA(x, x + 2 * (y - 1), y))
  }
}
