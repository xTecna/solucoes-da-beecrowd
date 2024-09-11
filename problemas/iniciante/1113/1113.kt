import java.util.*

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  while (true) {
    val x: Int = sc.nextInt()
    val y: Int = sc.nextInt()

    if (x == y) {
      break
    }

    if (x < y) {
      println("Crescente")
    } else {
      println("Decrescente")
    }
  }
}
