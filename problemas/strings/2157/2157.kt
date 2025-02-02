import java.util.*

fun main(args: Array<String>) {
    val sc = Scanner(System.`in`)

    val n: Int = sc.next().toInt()
    for (i in 1..n) {
        val b: Int = sc.next().toInt()
        val e: Int = sc.next().toInt()

        var resposta = ""
        for (j in b..e) {
            resposta += j.toString()
        }
        resposta += resposta.reversed()

        println(resposta)
    }
}
