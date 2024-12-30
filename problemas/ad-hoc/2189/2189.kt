import java.util.*

fun main(args: Array<String>) {
    val sc = Scanner(System.`in`)

    var teste = 1
    while (true) {
        val n: Int = sc.next().toInt()
        if (n == 0) {
            break
        }

        var resposta = -1
        for (i in 1..n) {
            val numero: Int = sc.next().toInt()
            if (i == numero) {
                resposta = i
            }
        }

        println("Teste " + teste)
        println(resposta)
        println("")

        teste += 1
    }
}
