import java.util.*
import kotlin.math.floor

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  val r = sc.nextInt()
  val l = sc.nextInt()

  val pi = 3.1415
  val v = 4.0 * pi * r * r * r / 3.0

  println(String.format("%d", floor(l / v).toInt()))
}
