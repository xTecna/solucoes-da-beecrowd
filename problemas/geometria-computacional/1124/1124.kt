import java.lang.Math
import java.util.*

fun dist(x1: Int, y1: Int, x2: Int, y2: Int): Double {
  return Math.sqrt(((x2 - x1) * (x2 - x1) + (y2 - y1) * (y2 - y1)).toDouble())
}

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  while (true) {
    val l: Int = sc.next().toInt()
    val c: Int = sc.next().toInt()
    val r1: Int = sc.next().toInt()
    val r2: Int = sc.next().toInt()
    if (l == 0 && c == 0 && r1 == 0 && r2 == 0) {
        break
    }

    val x1 = r1
    val y1 = r1
    val x2 = l - r2
    val y2 = c - r2

    val distancia = dist(x1, y1, x2, y2)
    if (l < 2 * r1 || c < 2 * r1 || l < 2 * r2 || c < 2 * r2 || distancia < r1 + r2) {
      println("N")
    } else {
      println("S")
    }
  }
}
