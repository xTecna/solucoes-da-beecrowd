import java.util.*

fun main(args: Array<String>) {
    val sc = Scanner(System.`in`)

    val A: Double = sc.next().toDouble()
    val B: Double = sc.next().toDouble()
    val C: Double = sc.next().toDouble()
    
    val media: Double = (2 * A + 3 * B + 5 * C)/10

    println("MEDIA = " + String.format("%.1f", media))
}
