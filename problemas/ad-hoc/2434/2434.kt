import java.util.*

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  val n = sc.nextInt()
  var saldo = sc.nextInt()

  var resposta = saldo
  for (i in 1..n) {
    val movimentacao = sc.nextInt()
    saldo += movimentacao

    if (saldo < resposta) {
      resposta = saldo
    }
  }

  println(resposta)
}
