import java.util.*

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  val n: Int = sc.nextInt()
  for (i in 0..(n-1)) {
    val m: Int = 1 + 4 * i
    println(String.format("%d %d %d PUM", m, m + 1, m + 2))
  }
}
