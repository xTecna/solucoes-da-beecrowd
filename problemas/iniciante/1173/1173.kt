import java.util.*

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  var x: Int = sc.next().toInt()
  for (i in 0..9) {
    println(String.format("N[%d] = %d", i, x))
    x *= 2
  }
}
