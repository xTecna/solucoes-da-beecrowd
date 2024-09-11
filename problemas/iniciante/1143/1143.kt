import java.util.*

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  val n: Int = sc.nextInt()
  for (i in 1..n) {
    println(String.format("%d %d %d", i, i * i, i * i * i))
  }
}
