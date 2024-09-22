import java.util.*

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  var soma: Int = 0
  for (i in 1..4) {
    val x = sc.nextInt()
    soma += x
  }
  println(soma - 3)
}
