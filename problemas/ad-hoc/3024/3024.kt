import java.lang.Math
import java.util.*

fun main(args: Array<String>) {
    val sc = Scanner(System.`in`)

    val n: Int = sc.next().toInt()
    val x: Int = sc.next().toInt()

    var resposta = 1
    var acumulado = 1 
    var anterior: Int = sc.next().toInt()
    for (i in 2..n) {
        val atual: Int = sc.next().toInt()

        if (atual - anterior <= x) {
            acumulado += 1
        } else {
            resposta = Math.max(resposta, acumulado)
            acumulado = 1
        }

        anterior = atual
    }
    resposta = Math.max(resposta, acumulado)

    println(resposta)
}
