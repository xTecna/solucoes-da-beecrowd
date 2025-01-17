import java.util.*

fun main(args: Array<String>) {
    val sc = Scanner(System.`in`)

    val n: Int = sc.next().toInt()

    var grito = ""
    for (i in 1..n) {
        grito += "a"
    }

    println("Ent" + grito + "o eh N" + grito + "t" + grito + "l!")
}
