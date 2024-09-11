import java.util.*

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  val x: Int = sc.nextInt()
  var z: Int = 0
  while (true) {
    z = sc.nextInt()
    if (z > x) {
      break
    }
  }

  var resposta = 1
  var soma = x
  while (soma <= z) {
    soma += x + resposta
    resposta += 1
  }

  println(resposta)
}
