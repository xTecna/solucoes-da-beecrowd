import java.lang.Math
import java.util.*

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  var pessoas = 0
  var jipes = 0
  while (sc.hasNext())
  {
    val palavra = sc.next()

    if(palavra == "ABEND"){
      break
    }

    val numero = sc.nextInt()
    if(palavra == "SALIDA"){
      pessoas += numero
      jipes += 1
    }else{
      pessoas -= numero;
      jipes -= 1;
    }
  }

  println(pessoas)
  println(jipes)
}
