import java.util.*

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  val n = sc.nextInt()
  for (i in 1..n) {
    val x = sc.nextInt()
    println(x % 2)
  }
}
