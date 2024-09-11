import java.util.*

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  var alcool = 0
  var gasolina = 0
  var diesel = 0
  while (true) {
    val codigo: Int = sc.nextInt()

    if (codigo == 1) {
      alcool += 1
    } else if (codigo == 2) {
      gasolina += 1
    } else if (codigo == 3) {
      diesel += 1
    } else if (codigo == 4) {
      break
    }
  }

  println("MUITO OBRIGADO")
  println(String.format("Alcool: %d", alcool))
  println(String.format("Gasolina: %d", gasolina))
  println(String.format("Diesel: %d", diesel))
}
