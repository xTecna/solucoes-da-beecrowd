import java.util.*

fun main(args: Array<String>) {
    val sc = Scanner(System.`in`)

    val n: Int = sc.next().toInt()

    for (i in 1..n) {
        val palavra1 = sc.next()
        val palavra2 = sc.next()
        val secreta = sc.next()

        val pos1 = secreta.indexOf('_')
        val pos2 = secreta.indexOf('_', pos1 + 1)

        if (palavra1[pos1] == palavra2[pos2] || palavra1[pos2] == palavra2[pos1]) {
            println("Y")
        } else {
            println("N")
        }
    }
}
