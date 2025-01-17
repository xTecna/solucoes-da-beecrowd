import java.util.*

fun main(args: Array<String>) {
    val sc = Scanner(System.`in`)
    val padrao = Regex("a+")

    val n: Int = sc.next().toInt()

    for (i in 1..n) {
        val hamekame: String = sc.next()
        val sequencias = padrao.findAll(hamekame).iterator()

        val tamanho = sequencias.next().value.length * sequencias.next().value.length
        print("k")
        for (i in 1..tamanho) {
            print("a")
        }
        println("")
    }
}
