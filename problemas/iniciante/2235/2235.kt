import java.util.*

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  val a: Int = sc.nextInt()
  val b: Int = sc.nextInt()
  val c: Int = sc.nextInt()

  if (a == b || a == c || b == c || (a + b) == c || (a + c) == b || (b + c) == a) {
    println("S")
  } else {
    println("N")
  }
}
