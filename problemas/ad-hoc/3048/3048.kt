import java.util.*

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  val n: Int = sc.next().toInt()

  var anterior = 0
  var resposta = 0
  for (i in 1..n) {
    val atual: Int = sc.next().toInt()

    if (atual != anterior) {
      anterior = atual
      resposta += 1
    }
  }

  println(resposta)
}
