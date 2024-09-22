use std::io;

fn main() {
    loop {
        let mut input = String::new();

        match io::stdin().read_line(&mut input) {
            Ok(0) => {
                break;
            }
            Ok(_) => {
                let n: i32 = input.trim().parse().unwrap();

                for i in 0..n {
                    let mut resposta: String = "".to_owned();
                    for j in 0..n {
                        if i == n - j - 1 {
                            resposta.push_str("2");
                        } else if i == j {
                            resposta.push_str("1");
                        } else {
                            resposta.push_str("3");
                        }
                    }
                    println!("{}", resposta);
                }
            }
            Err(_) => {
                break;
            }
        }
    }
}
