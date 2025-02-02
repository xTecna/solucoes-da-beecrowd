use std::io;

fn main() {
    loop {
        let mut input = String::new();
        io::stdin().read_line(&mut input);
        let n: i32 = input.trim().parse().unwrap();

        if n == 0 {
            break;
        }

        let mut menor_ano = 9999;
        let mut input2 = String::new();
        let mut resposta = String::new();
        for _ in 0..n {
            input2 = String::new();
            io::stdin().read_line(&mut input2);
            let partes: Vec<&str> = input2.split(" ").collect();

            let planeta = partes[0];
            let ano: i32 = partes[1].trim().parse().unwrap();
            let tempo: i32 = partes[2].trim().parse().unwrap();

            if ano - tempo < menor_ano {
                menor_ano = ano - tempo;
                resposta = planeta.to_string();
            }
        }

        println!("{}", resposta);
    }
}
