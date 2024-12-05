import java.util.*

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  val h = sc.nextInt()
  val p = sc.nextInt()
  println(String.format("%.2f", h.toFloat() / p))
}
