import java.util.*

fun main(args: Array<String>) {
    val sc = Scanner(System.`in`)
    
    val X: Int = sc.next().toInt()
    val Y: Double = sc.next().toDouble()
    
    val consumo: Double = X/Y

    println(String.format("%.3f", consumo) + " km/l")
}
