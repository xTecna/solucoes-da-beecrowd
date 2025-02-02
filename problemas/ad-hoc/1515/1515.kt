import java.lang.Math
import java.util.*

fun main(args: Array<String>) {
    val sc = Scanner(System.`in`)

    while(true){
        val n: Int = sc.next().toInt()
        if (n == 0) {
            break
        }

        var resposta = ""
        var menor_ano = 9999
        for (i in 1..n) {
            var planeta: String = sc.next()
            var ano: Int = sc.next().toInt()
            var tempo: Int = sc.next().toInt()

            if (ano - tempo < menor_ano) {
                resposta = planeta
                menor_ano = ano - tempo
            }
        }

        println(resposta)
    }
}
