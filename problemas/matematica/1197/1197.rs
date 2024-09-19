use std::io;

fn main() {
    loop {
        let mut input = String::new();

        match io::stdin().read_line(&mut input) {
            Ok(0) => {
                break;
            }
            Ok(_) => {
                let parts: Vec<&str> = input.split(" ").collect();
                let v: i32 = parts[0].trim().parse().unwrap();
                let t: i32 = parts[1].trim().parse().unwrap();

                println!("{}", v * 2 * t);
            }
            Err(_) => {
                break;
            }
        }
    }
}
