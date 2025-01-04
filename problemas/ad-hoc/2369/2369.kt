import java.util.*

fun main(args: Array<String>) {
    val sc = Scanner(System.`in`)

    var n: Int = sc.next().toInt()

    var conta = 7
    if (n > 100) {
        conta += (n - 100) * 5
        n = 100
    }
    if (n > 30) {
        conta += (n - 30) * 2
        n = 30
    }
    if (n > 10) {
        conta += (n - 10)
    }

    println(conta)
}
