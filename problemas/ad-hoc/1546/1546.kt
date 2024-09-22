import java.util.*

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  val nomes = arrayOf("Rolien", "Naej", "Elehcim", "Odranoel")

  val n = sc.nextInt()
  for (i in 1..n) {
    val k = sc.nextInt()
    for (j in 1..k) {
      val feedback = sc.nextInt()
      println(nomes[feedback - 1])
    }
  }
}
