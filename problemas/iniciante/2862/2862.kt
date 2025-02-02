import java.util.*

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  val c = sc.nextInt()
  for (i in 1..c) {
    val n = sc.nextInt()
    if (n <= 8000) {
      println("Inseto!")
    } else {
      println("Mais de 8000!")
    }
  }
}