use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let partes: Vec<&str> = input.split(" ").collect();
    let mut x: i32 = partes[0].trim().parse().unwrap();
    let mut y: i32 = partes[1].trim().parse().unwrap();

    while x != 0 && y != 0 {
        if x > 0 {
            if y > 0 {
                println!("primeiro");
            } else {
                println!("quarto");
            }
        } else {
            if y > 0 {
                println!("segundo");
            } else {
                println!("terceiro");
            }
        }

        let mut input2 = String::new();
        io::stdin().read_line(&mut input2);
        let partes2: Vec<&str> = input2.split(" ").collect();
        x = partes2[0].trim().parse().unwrap();
        y = partes2[1].trim().parse().unwrap();
    }
}
