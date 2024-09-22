use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let x: Vec<&str> = input.split(" ").collect();

    let mut input2 = String::new();
    io::stdin().read_line(&mut input2);
    let y: Vec<&str> = input2.split(" ").collect();

    let mut compativel = true;
    for i in 0..5 {
        if x[i] == y[i] {
            compativel = false;
            break;
        }
    }

    if compativel {
        println!("Y");
    } else {
        println!("N");
    }
}
