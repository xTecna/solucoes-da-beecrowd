import java.util.*

fun main(args: Array<String>) {
  for (i in 0..4) {
    for (j in 7 downTo 5) {
      println(String.format("I=%d J=%d", 1 + 2 * i, j + 2 * i))
    }
  }
}
