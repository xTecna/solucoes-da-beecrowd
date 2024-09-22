import java.util.*
import java.lang.Math

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  val n: Int = sc.next().toInt()

  println(String.format("%.1f %.1f", n / Math.log(n.toDouble()), 1.25506 * n / Math.log(n.toDouble())))
}
