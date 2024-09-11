import java.util.*

fun main(args: Array<String>) {
    val sc = Scanner(System.`in`)

    var positivos: Int = 0
    for (i in 1..6) {
        var x: Float = sc.next().toFloat()

        if (x > 0) {
            positivos += 1
        }
    }

    println(String.format("%d valores positivos", positivos))
}
