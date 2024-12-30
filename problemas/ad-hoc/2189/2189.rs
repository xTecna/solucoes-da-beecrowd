use std::io;

fn main() {
    let mut input: String;

    let mut teste = 1;
    loop {
        input = String::new();
        io::stdin().read_line(&mut input);
        let n: i32 = input.trim().parse().unwrap();

        if (n == 0) {
            break;
        }

        input = String::new();
        io::stdin().read_line(&mut input);
        let numeros: Vec<i32> = input.split_whitespace().map(|s| s.parse().expect("")).collect();

        let mut resposta = -1;
        for i in 0..n {
            if (i + 1 == numeros[i as usize]) {
                resposta = i + 1;
            }
        }

        println!("Teste {}", teste);
        println!("{}", resposta);
        println!("");

        teste += 1;
    }
}
