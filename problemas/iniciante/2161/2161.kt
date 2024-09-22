import java.util.*

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  val n = sc.nextInt()

  var resposta = 0.0
  if (n == 0) {
    resposta = 3.0
  } else {
    resposta = 6.0
    for (i in 2..n) {
      resposta = 6.0 + 1.0 / resposta
    }
    resposta = 3.0 + 1.0 / resposta
  }

  println(String.format("%.10f", resposta))
}
