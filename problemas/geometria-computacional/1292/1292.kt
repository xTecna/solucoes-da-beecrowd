import java.util.*
import java.lang.Math

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  while (sc.hasNext()) {
    val f = sc.next().toDouble()
    val lado = f * Math.sin(108 * Math.PI / 180) / Math.sin(63 * Math.PI / 180)
    println(String.format("%.10f", lado))
  }
}
