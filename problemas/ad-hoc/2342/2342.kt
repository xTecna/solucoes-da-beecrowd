import java.util.*

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  val n = sc.nextInt()
  sc.nextLine()

  val palavras = sc.nextLine().trim().split(" ")
  val p = palavras[0].toInt()
  val c = palavras[1]
  val q = palavras[2].toInt()

  if (c == "+") {
    if (p + q <= n) {
      println("OK")
    } else {
      println("OVERFLOW")
    }
  } else {
    if (p * q <= n) {
      println("OK")
    } else {
      println("OVERFLOW")
    }
  }
}
