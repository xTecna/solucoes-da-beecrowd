import java.util.*
import java.lang.Math

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  val x: Int = sc.nextInt()
  val y: Int = sc.nextInt()

  val a = Math.min(x, y)
  val b = Math.max(x, y)

  var soma: Int = 0
  for (i in a..b) {
    if (i % 13 != 0) {
      soma += i
    }
  }
  println(soma)
}
