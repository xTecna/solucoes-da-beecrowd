import java.util.Scanner

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  val n = sc.nextInt()

  for (i in 1..n) {
    val altura = sc.nextInt()
    val espessura = sc.nextInt()
    val galhos = sc.nextInt()

    if (200 <= altura && altura <= 300 && 50 <= espessura && 150 <= galhos) {
      println("Sim")
    } else {
      println("Nao")
    }
  }
}
