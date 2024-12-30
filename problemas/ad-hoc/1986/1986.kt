import java.util.*

fun main(args: Array<String>) {
    val sc = Scanner(System.`in`)

    val n: Int = sc.next().toInt()

    var resposta = ""
    for (i in 1..n) {
        val letra = sc.next().toInt(16)
        resposta += letra.toChar()
    }

    println(resposta)
}
