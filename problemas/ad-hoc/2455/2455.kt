import java.util.*

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  val p1 = sc.nextInt()
  val c1 = sc.nextInt()
  val p2 = sc.nextInt()
  val c2 = sc.nextInt()

  val diferenca = p2 * c2 - p1 * c1

  if(diferenca < 0){
    println(-1)
  }else if(diferenca > 0){
    println(1)
  }else{
    println(0)
  }
}
