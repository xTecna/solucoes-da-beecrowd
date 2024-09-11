import java.util.*

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  var inter = 0
  var gremio = 0
  var empate = 0
  while (true) {
    val i: Int = sc.nextInt()
    val g: Int = sc.nextInt()

    if (i < g) {
      gremio += 1
    } else if (i == g){
      empate += 1
    } else {
      inter += 1
    }

    var codigo = 0
    while (codigo != 1 && codigo != 2){
      println("Novo grenal (1-sim 2-nao)")
      codigo = sc.nextInt()
    }

    if(codigo == 2){
      break
    }
  }

  println(String.format("%d grenais", inter + gremio + empate))
  println(String.format("Inter:%d", inter))
  println(String.format("Gremio:%d", gremio))
  println(String.format("Empates:%d", empate))

  if(inter > gremio && inter > empate){
    println("Inter venceu mais")
  }else if(gremio > inter && gremio > empate){
    println("Gremio venceu mais")
  } else {
    println("Nao houve vencedor")
  }
}
