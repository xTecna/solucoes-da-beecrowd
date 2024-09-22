import java.util.*

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  while (true) {
    var x = sc.nextLong()
    val m = sc.nextLong()

    if (x == 0.toLong() && m == 0.toLong()) {
      break
    }

    println(x * m)
  }
}
