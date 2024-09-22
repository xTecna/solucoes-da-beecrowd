use std::io;

fn main() {
    loop {
        let mut input = String::new();
        io::stdin().read_line(&mut input);
        let n: i32 = input.trim().parse().unwrap();

        if (n == 0) {
            break;
        }

        let mut jogador1 = 0;
        let mut jogador2 = 0;
        for _ in 0..n {
            input = String::new();
            io::stdin().read_line(&mut input);
            let numeros: Vec<&str> = input.split(" ").collect();
            let a: i32 = numeros[0].trim().parse().unwrap();
            let b: i32 = numeros[1].trim().parse().unwrap();

            if (a > b) {
                jogador1 += 1;
            } else if (a < b) {
                jogador2 += 1;
            }
        }

        println!("{} {}", jogador1, jogador2);
    }
}
