use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let n: i32 = input.trim().parse().unwrap();

    for _ in 0..n {
        let mut input2 = String::new();
        io::stdin().read_line(&mut input2);
        let partes: Vec<&str> = input2.split(" ").collect();
        let a: f64 = partes[0].trim().parse().unwrap();
        let b: f64 = partes[1].trim().parse().unwrap();
        let c: f64 = partes[2].trim().parse().unwrap();

        println!("{:.1}", (2.0 * a + 3.0 * b + 5.0 * c) / 10.0);
    }
}
