use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let numeros: Vec<i32> = input.split_whitespace().map(|s| s.parse().expect("")).collect();
    let cv = numeros[0];
    let ce = numeros[1];
    let cs = numeros[2];
    let fv = numeros[3];
    let fe = numeros[4];
    let fs = numeros[5];

    let cp = 10000 * (3 * cv + ce) + cs;
    let fp = 10000 * (3 * fv + fe) + fs;

    if (cp > fp) {
        println!("C");
    } else if (fp > cp) {
        println!("F");
    } else {
        println!("=");
    }
}
