import java.util.*

fun converteParaDecimal(numero: String): Int {
  var resposta = 0
  var potencia = 0
  val fatoriais = listOf(1, 2, 6, 24, 120)

  for (i in (numero.length - 1) downTo 0 step 1) {
    resposta += (numero[i].toInt() - '0'.toInt()) * fatoriais[potencia]
    potencia += 1
  }

  return resposta
}

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  while(true) {
    val n = sc.next()
    if (n == "0") {
      break
    }
    println(converteParaDecimal(n))
  }
}
