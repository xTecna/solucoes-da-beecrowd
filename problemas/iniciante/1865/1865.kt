import java.util.*

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  val n = sc.nextInt()
  for (i in 1..n) {
    val nome = sc.next()
    val poder = sc.nextInt()

    if(nome == "Thor"){
      println('Y')
    }else{
      println('N')
    }
  }
}