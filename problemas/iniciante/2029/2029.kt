import java.util.*

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  val pi = 3.14
  while (sc.hasNext()) {
    val v = sc.nextFloat()
    val d = sc.nextFloat() / 2.0

    val area = pi * d * d
    val altura = v / area

    println(String.format("ALTURA = %.2f", altura))
    println(String.format("AREA = %.2f", area))
  }
}
