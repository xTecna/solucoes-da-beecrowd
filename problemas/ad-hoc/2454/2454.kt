import java.util.*

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  val p = sc.nextInt()
  val r = sc.nextInt()

  if (p == 1) {
    if (r == 1) {
      println('A')
    } else {
      println('B')
    }
  } else {
    println('C')
  }
}
