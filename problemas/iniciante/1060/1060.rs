use std::io;

fn main() {
    let mut positivos: i32 = 0;
    
    for i in 0..6 {
        let mut input = String::new();
        io::stdin().read_line(&mut input);
        let numero: f64 = input.trim().parse().unwrap();

        if numero > 0.0 {
            positivos += 1;
        }
    }

    println!("{} valores positivos", positivos);
}
