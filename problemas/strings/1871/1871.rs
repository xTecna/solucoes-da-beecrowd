use std::io;

fn main() {
    loop {
        let mut input = String::new();
        io::stdin().read_line(&mut input);
        let numeros: Vec<&str> = input.split(" ").collect();
        let m: i32 = numeros[0].trim().parse().unwrap();
        let n: i32 = numeros[1].trim().parse().unwrap();

        if m == 0 && n == 0 {
            break;
        }

        let mut soma = (m + n).to_string();
        soma = soma.replace("0", "");
        println!("{}", soma);
    }
}
