import java.util.*

fun main(args: Array<String>) {
    val sc = Scanner(System.`in`)
    
    val distancia: Int = sc.next().toInt()

    println(String.format("%d minutos", distancia * 2))
}
