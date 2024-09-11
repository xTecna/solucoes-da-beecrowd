import java.util.*

fun main(args: Array<String>) {
    val sc = Scanner(System.`in`)
    
    val segundos: Int = sc.next().toInt()
    
    val horas: Int = segundos/3600
    val minutos: Int = (segundos%3600)/60

    println(String.format("%d:%d:%d", horas, minutos, (segundos%3600)%60))
}
