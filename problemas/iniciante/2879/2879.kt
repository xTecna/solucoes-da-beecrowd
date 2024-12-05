import java.util.Scanner

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  val n = sc.nextInt()

  var vitorias = 0
  for (i in 1..n) {
    val x = sc.nextInt()
    if (x != 1) {
        vitorias += 1
    }
  }

  println(vitorias)
}
