import java.util.*

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  val n = sc.nextInt()

  var resposta = 0.0
  if (n == 0) {
    resposta = 1.0
  } else {
    resposta = 2.0
    for (i in 2..n) {
      resposta = 2.0 + 1.0 / resposta
    }
    resposta = 1.0 + 1.0 / resposta
  }

  println(String.format("%.10f", resposta))
}
