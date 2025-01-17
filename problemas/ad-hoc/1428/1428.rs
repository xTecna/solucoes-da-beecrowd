use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let t: i32 = input.trim().parse().unwrap();

    for _ in 0..t {
        input = String::new();
        io::stdin().read_line(&mut input);
        let numeros: Vec<i32> = input.split_whitespace().map(|s| s.parse().expect("")).collect();
        let n = numeros[0];
        let m = numeros[1];

        println!("{}", ((n - 2) as f64 / 3.0).ceil() * ((m - 2) as f64 / 3.0).ceil());
    }
}
