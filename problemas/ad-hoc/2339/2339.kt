import java.util.*

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  val c = sc.nextInt()
  val p = sc.nextInt()
  val f = sc.nextInt()

  if (p >= c * f) {
    println('S')
  } else {
    println('N')
  }
}
