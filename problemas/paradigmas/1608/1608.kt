import java.lang.Math
import java.util.*

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  val t: Int = sc.nextInt()
  for (k in 1..t) {
    val d: Int = sc.nextInt()
    val i: Int = sc.nextInt()
    val b: Int = sc.nextInt()

    val precos = mutableListOf<Int>()
    for (m in 1..i) {
      precos.add(sc.nextInt())
    }

    var resposta: Int = 0
    for (m in 1..b) {
      val q: Int = sc.nextInt()

      var custo: Int = 0
      for (n in 1..q) {
        custo += precos[sc.nextInt()] * sc.nextInt()
      }
      resposta = Math.max(resposta, d / custo)
    }

    println(resposta)
  }
}
