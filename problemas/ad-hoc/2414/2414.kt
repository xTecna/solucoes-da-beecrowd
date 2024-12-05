import java.util.*

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  var maior = 0
  while (sc.hasNext()) {
    val numero = sc.nextInt()
    if (numero > maior) {
      maior = numero
    }
  }

  println(maior)
}
