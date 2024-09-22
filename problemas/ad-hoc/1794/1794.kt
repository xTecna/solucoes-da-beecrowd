import java.util.*

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  val n: Int = sc.nextInt()
  val la: Int = sc.nextInt()
  val lb: Int = sc.nextInt()
  val sa: Int = sc.nextInt()
  val sb: Int = sc.nextInt()

  if (la <= n && n <= lb && sa <= n && n <= sb) {
    println("possivel")
  } else {
    println("impossivel")
  }
}
