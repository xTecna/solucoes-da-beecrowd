import java.util.*
import kotlin.math.*

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  while (true) {
    val n = sc.nextInt()

    if (n == 0) {
      break
    }

    val limite = (floor(log10((1 shl (2 * n - 2)).toDouble())) + 1).toInt()
    val sb = StringBuilder()
    for (i in 0 until n) {
      sb.append(String.format(String.format("%%%dd", limite), 1 shl i))
      for (j in 1 until n) {
        sb.append(String.format(String.format(" %%%dd", limite), 1 shl (i + j)))
      }
      sb.append("\n")
    }
    println(sb)
  }
}
