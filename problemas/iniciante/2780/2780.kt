import java.util.*

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  val d = sc.nextInt()
  if (d <= 800) {
    println(1)
  } else if (d <= 1400) {
    println(2)
  } else {
    println(3)
  }
}
