import java.util.*

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  while (true) {
    var l: Int = sc.nextInt()
    var r: Int = sc.nextInt()

    if(l == 0 && r == 0){
      break
    }

    println(l + r)
  }
}
