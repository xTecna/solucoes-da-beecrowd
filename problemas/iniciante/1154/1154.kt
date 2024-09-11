import java.util.*

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  var soma = 0
  var q = 0
  while (true) {
    val idade: Int = sc.nextInt()

    if (idade < 0) {
      break
    }

    soma += idade
    q += 1
  }

  println(String.format("%.2f", soma.toDouble() / q))
}
