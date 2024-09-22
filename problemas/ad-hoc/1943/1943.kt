import java.util.*

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  val k = sc.nextInt()

  if (k == 1) {
    println("Top 1")
  } else if (k <= 3) {
    println("Top 3")
  } else if (k <= 5) {
    println("Top 5")
  } else if (k <= 10) {
    println("Top 10")
  } else if (k <= 25) {
    println("Top 25")
  } else if (k <= 50) {
    println("Top 50")
  } else {
    println("Top 100")
  }
}
