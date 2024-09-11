import java.util.*

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  val n: Int = sc.nextInt()
  for (i in 1..n) {
    val a: Double = sc.nextDouble()
    val b: Double = sc.nextDouble()
    val c: Double = sc.nextDouble()
    val media = (2.0 * a + 3.0 * b + 5.0 * c) / 10.0
    println(String.format("%.1f", media))
  }
}
