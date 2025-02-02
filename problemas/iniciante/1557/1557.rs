use std::io;

fn main() {
    loop {
        let mut input = String::new();
        io::stdin().read_line(&mut input);
        let n: i32 = input.trim().parse().unwrap();

        if n == 0 {
            break;
        }

        let limite = (1 << (2 * n - 2)).to_string().len();
        for i in 0..n {
            let mut resposta = format!("{:>width$}", (1 << i), width = limite);
            for j in 1..n {
                resposta = format!("{} {:>width$}", resposta, (1 << (i + j)), width = limite);
            }
            println!("{}", resposta);
        }
        println!();
    }
}
