import java.util.*

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  while (true) {
    val x: Int = sc.nextInt()
    val y: Int = sc.nextInt()

    if (x == 0 || y == 0) {
      break
    }

    if (x > 0) {
      if (y > 0) {
        println("primeiro")
      } else {
        println("quarto")
      }
    } else {
      if (y > 0) {
        println("segundo")
      } else {
        println("terceiro")
      }
    }
  }
}
