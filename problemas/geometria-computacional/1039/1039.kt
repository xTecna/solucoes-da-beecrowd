import java.lang.Math
import java.util.*

fun dist(x1: Int, y1: Int, x2: Int, y2: Int): Double {
  return Math.sqrt(((x2 - x1) * (x2 - x1) + (y2 - y1) * (y2 - y1)).toDouble())
}

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  while (sc.hasNext()) {
    val r1: Int = sc.next().toInt()
    val x1: Int = sc.next().toInt()
    val y1: Int = sc.next().toInt()
    val r2: Int = sc.next().toInt()
    val x2: Int = sc.next().toInt()
    val y2: Int = sc.next().toInt()

    if (dist(x1, y1, x2, y2) <= (r1 - r2)) {
      println("RICO")
    } else {
      println("MORTO")
    }
  }
}
