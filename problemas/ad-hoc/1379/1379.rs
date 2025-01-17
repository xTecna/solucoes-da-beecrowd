use std::io;

fn main() {
    loop {
        let mut input = String::new();
        io::stdin().read_line(&mut input);
        let numeros: Vec<i32> = input.split_whitespace().map(|s| s.parse().expect("")).collect();
        let a = numeros[0];
        let b = numeros[1];

        if (a == 0 && b == 0) {
            break;
        }

        println!("{}", 2 * a - b);
    }
}
