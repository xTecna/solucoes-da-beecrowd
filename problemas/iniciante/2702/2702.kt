import java.util.*
import kotlin.math.max

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  val ca = sc.nextInt()
  val ba = sc.nextInt()
  val pa = sc.nextInt()

  val cr = sc.nextInt()
  val br = sc.nextInt()
  val pr = sc.nextInt()

  println(max(cr - ca, 0) + max(br - ba, 0) + max(pr - pa, 0))
}
