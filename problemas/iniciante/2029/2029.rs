use std::io;

fn main() {
    let pi = 3.14;
    loop {
        let mut input = String::new();

        match io::stdin().read_line(&mut input) {
            Ok(0) => {
                break;
            }
            Ok(_) => {
                let v: f64 = input.trim().parse().unwrap();

                input = String::new();
                io::stdin().read_line(&mut input);
                let mut d: f64 = input.trim().parse().unwrap();
                d /= 2.0;

                let area = pi * d * d;
                let altura = v / area;

                println!("ALTURA = {:.2}", altura);
                println!("AREA = {:.2}", area);
            }
            Err(_) => {
                break;
            }
        }
    }
}
