use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let numeros: Vec<&str> = input.split(" ").collect();
    let p1: i32 = numeros[0].trim().parse().unwrap();
    let c1: i32 = numeros[1].trim().parse().unwrap();
    let p2: i32 = numeros[2].trim().parse().unwrap();
    let c2: i32 = numeros[3].trim().parse().unwrap();

    let diferenca = p2 * c2 - p1 * c1;

    if diferenca < 0 {
        println!("-1");
    } else if diferenca == 0 {
        println!("0");
    } else {
        println!("1");
    }
}
