use std::io;

fn main() {
    let mut input = String::new();

    io::stdin().read_line(&mut input);

    let parts: Vec<&str> = input.split(" ").collect();
    
    let codigo: i32 = parts[0].trim().parse().unwrap();
    let quantidade: i32 = parts[1].trim().parse().unwrap();
    
    let precos = [4.00, 4.50, 5.00, 2.00, 1.50];
    println!("Total: R$ {:.2}", precos[(codigo - 1) as usize] * quantidade as f64);
}