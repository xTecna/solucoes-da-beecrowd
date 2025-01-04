import java.util.*

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  val l = sc.nextInt()
  val c = sc.nextInt()
  println(1 - ((l % 2) xor (c % 2)))
}
