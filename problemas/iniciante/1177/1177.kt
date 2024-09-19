import java.util.*

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  var x: Int = sc.next().toInt()
  for (i in 0..999) {
    println(String.format("N[%d] = %d", i, i % x))
  }
}
