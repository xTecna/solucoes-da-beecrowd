use std::io;

fn mdc(a: i32, b: i32) -> i32 {
    if b == 0 {
        return a;
    }
    mdc(b, a % b)
}

fn main() {
    loop {
        let mut input = String::new();

        match io::stdin().read_line(&mut input) {
            Ok(0) => {
                break;
            }
            Ok(_) => {
                let linha: Vec<&str> = input.split(" ").collect();
                let x: i32 = linha[0].trim().parse().unwrap();
                let y: i32 = linha[1].trim().parse().unwrap();

                println!("{}", (2 * (x + y)) / mdc(x, y));
            }
            Err(_) => {
                break;
            }
        }
    }
}
