use std::io;

fn main() {
    loop {
        let mut input = String::new();

        match io::stdin().read_line(&mut input) {
            Ok(0) => {
                break;
            }
            Ok(_) => {
                let n: usize = input.trim().parse().unwrap();

                if n == 0 {
                    break;
                }

                let mut biblioteca: Vec<String> = Vec::new();
                for _ in 0..n {
                    let mut input2 = String::new();
                    io::stdin().read_line(&mut input2);
                    let linha: String = input2.trim().parse().unwrap();
                    biblioteca.push(linha);
                }
                biblioteca.sort();
                for linha in &biblioteca {
                    println!("{}", linha);
                }
            }
            Err(_) => {
                break;
            }
        }
    }
}
