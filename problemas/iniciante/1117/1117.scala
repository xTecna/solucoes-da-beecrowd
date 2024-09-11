object Main {
    def main(args: Array[String]): Unit = {
        var notas = new Array[Float](2)
        notas(0) = -1
        notas(1) = -1
        
        while (notas(1) == -1){
            val nota = io.StdIn.readLine().toFloat

            if(nota >= 0 && nota <= 10){
                if(notas(0) == -1){
                    notas(0) = nota
                }else{
                    notas(1) = nota
                }
            }else{
                printf("nota invalida\n")
            }
        }

        printf("media = %.2f\n", (notas(0) + notas(1))/2)
    }
}
