import java.util.*

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  for (i in 1..4) {
    val c = sc.nextInt()
    if (c == 1) {
      println(i)
      break
    }
  }
}
