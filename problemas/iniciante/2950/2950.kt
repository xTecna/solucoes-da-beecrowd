import java.util.Scanner

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  val n = sc.nextInt()
  val x = sc.nextInt()
  val y = sc.nextInt()

  println(String.format("%.2f", n.toFloat() / (x + y)))
}
