use std::io;

fn main() {
    let precos = [0.0, 1.5, 2.5, 3.5, 4.5, 5.5];

    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let p: i32 = input.trim().parse().unwrap();

    let mut valor: f64 = 0.0;
    for _ in 0..p {
        input = String::new();
        io::stdin().read_line(&mut input);
        let parts: Vec<&str> = input.split(" ").collect();
        let codigo: i32 = parts[0].trim().parse().unwrap();
        let q: i32 = parts[1].trim().parse().unwrap();

        valor += precos[(codigo - 1000) as usize] * (q as f64);
    }
    println!("{:.2}", valor);
}
