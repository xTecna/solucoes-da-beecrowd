import java.util.*
import java.lang.Math

fun main(args: Array<String>) {
    val sc = Scanner(System.`in`)
    
    val x1: Double = sc.next().toDouble()
    val y1: Double = sc.next().toDouble()
    val x2: Double = sc.next().toDouble()
    val y2: Double = sc.next().toDouble()
    
    val distancia: Double = Math.sqrt(((x2 - x1) * (x2 - x1)) + ((y2 - y1) * (y2 - y1)))

    println(String.format("%.4f", distancia))
}
