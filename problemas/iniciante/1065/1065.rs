use std::io;

fn main() {
    let mut pares: i32 = 0;

    for i in 0..5 {
        let mut input = String::new();
        io::stdin().read_line(&mut input);
        let numero: i32 = input.trim().parse().unwrap();

        if numero % 2 == 0 {
            pares += 1;
        }
    }

    println!("{} valores pares", pares);
}
