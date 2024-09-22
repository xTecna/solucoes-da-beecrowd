import java.util.*

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  val n = sc.nextInt()
  val a = sc.nextInt()
  val b = sc.nextInt()

  if(a + b <= n){
    println("Farei hoje!")
  }else{
    println("Deixa para amanha!")
  }
}
