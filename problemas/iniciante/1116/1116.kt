import java.util.*

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  val n: Int = sc.nextInt()
  for (i in 1..n) {
    var x: Int = sc.nextInt()
    var y: Int = sc.nextInt()

    if (y == 0) {
      println("divisao impossivel")
    } else {
      println(String.format("%.1f", x.toDouble() / y))
    }
  }
}
