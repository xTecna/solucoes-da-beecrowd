import java.util.*

fun main(args: Array<String>) {
    val sc = Scanner(System.`in`)

  val l: Int = sc.next().toInt()
  val c: Int = sc.next().toInt()

  println(l * c + (l - 1) * (c - 1))
  println(2 * (l + c - 2))
}
