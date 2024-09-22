import java.util.*

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  while (true) {
    val m = sc.nextInt()
    val n = sc.nextInt()

    if (m == 0 && n == 0) {
      break
    }

    var soma = (m + n).toString()
    soma = soma.replace("0", "")
    println(soma)
  }
}
