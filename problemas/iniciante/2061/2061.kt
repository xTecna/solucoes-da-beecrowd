import java.util.*

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  var n = sc.nextInt()
  val m = sc.nextInt()
  for (i in 1..m) {
    val acao = sc.next()

    if (acao == "fechou") {
      n += 1
    } else {
      n -= 1
    }
  }
  println(n)
}
