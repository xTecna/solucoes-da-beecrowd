import java.util.*
import java.lang.Math

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  val m: Int = sc.next().toInt()
  val a: Int = sc.next().toInt()
  val b: Int = sc.next().toInt()

  val c = m - a - b

  println(Math.max(a, Math.max(b, c)))
}
