import java.util.*

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  val precos = arrayOf(0.0, 1.5, 2.5, 3.5, 4.5, 5.5)

  var valor: Double = 0.0
  val n: Int = sc.nextInt()
  for (i in 1..n) {
    val codigo = sc.nextInt()
    val q = sc.nextInt()

    valor += precos[codigo - 1000] * q
  }

  println(String.format("%.2f", valor))
}
