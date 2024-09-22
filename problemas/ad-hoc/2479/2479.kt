import java.util.*

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  val n = sc.nextInt()

  var levadas = 0
  var comportadas = 0
  val criancas = mutableListOf<String>()
  for (i in 0..(n - 1)) {
    val comportamento = sc.next()
    val crianca = sc.next()

    if (comportamento == "+") {
      comportadas += 1
    } else {
      levadas += 1
    }

    criancas.add(crianca)
  }
  criancas.sort()

  for (i in 0..(n - 1)) {
    println(criancas[i])
  }
  println(String.format("Se comportaram: %d | Nao se comportaram: %d", comportadas, levadas))
}
