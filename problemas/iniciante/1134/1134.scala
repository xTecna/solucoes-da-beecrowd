object Main {
    def main(args: Array[String]): Unit = {
        var alcool = 0
        var gasolina = 0
        var diesel = 0
        
        var codigo = io.StdIn.readLine().toInt
        while (codigo != 4){
            if(codigo == 1){
                alcool += 1;
            }else if(codigo == 2){
                gasolina += 1;
            }else if(codigo == 3){
                diesel += 1;
            }
            
            codigo = io.StdIn.readLine().toInt
        }

        printf("MUITO OBRIGADO\n")
        printf("Alcool: %d\n", alcool)
        printf("Gasolina: %d\n", gasolina)
        printf("Diesel: %d\n", diesel)
    }
}
