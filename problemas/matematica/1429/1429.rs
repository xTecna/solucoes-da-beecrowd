use std::io;

fn converteParaDecimal(n: &str) -> i32 {
    let mut resposta = 0;
    let mut potencia = 0;
    let fatoriais = [1, 2, 6, 24, 120];

    for c in n.chars().rev() {
        let digito: i32 = c.to_digit(10).unwrap() as i32;
        resposta += digito * fatoriais[potencia];
        potencia += 1;
    }

    resposta
}

fn main() {
    loop {
        let mut input = String::new();
        io::stdin().read_line(&mut input);
        let n: String = input.trim().parse().unwrap();

        if n == "0" {
            break;
        }

        println!("{}", converteParaDecimal(&n));
    }
}
