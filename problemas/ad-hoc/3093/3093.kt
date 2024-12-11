import java.util.*

fun main(args: Array<String>) {
    val sc = Scanner(System.`in`)

    val n: Int = sc.next().toInt()
    for (i in 1..n) {
        val cartas = sc.next()

        if ("A" in cartas && "K" in cartas && "Q" in cartas && "J" in cartas) {
            println("Aaah muleke")
        } else {
            println("Ooo raca viu")
        }
    }
}
