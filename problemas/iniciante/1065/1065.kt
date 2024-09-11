import java.util.*

fun main(args: Array<String>) {
    val sc = Scanner(System.`in`)

    var pares: Int = 0
    for (i in 1..5) {
        var x: Int = sc.next().toInt()

        if (x % 2 == 0) {
            pares += 1
        }
    }

    println(String.format("%d valores pares", pares))
}
