import java.util.*

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  var notas = mutableListOf<Double>()
  while (notas.size < 2) {
    val nota: Double = sc.nextDouble()

    if (0.0 <= nota && nota <= 10.0) {
      notas.add(nota)
    } else {
      println("nota invalida")
    }
  }

  println(String.format("media = %.2f", (notas[0] + notas[1]) / 2.0))
}
