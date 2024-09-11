import java.util.*

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  for (i in 0..12) {
    println(String.format("I=%d J=%d", 1 + 3 * i, 60 - 5 * i))
  }
}
