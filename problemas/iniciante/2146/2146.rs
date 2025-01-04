use std::io;

fn main() {
    loop {
        let mut input = String::new();

        match io::stdin().read_line(&mut input) {
            Ok(0) => {
                break;
            }
            Ok(_) => {
                let senha: i32 = input.trim().parse().unwrap();
                println!("{}", senha - 1);
            }
            Err(_) => {
                break;
            }
        }
    }
}
