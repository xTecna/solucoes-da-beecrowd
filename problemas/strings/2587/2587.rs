use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let n: i32 = input.trim().parse().unwrap();

    for _ in 0..n {
        let mut input1 = String::new();
        io::stdin().read_line(&mut input1);
        let mut palavra1 = input1.trim().as_bytes();

        let mut input2 = String::new();
        io::stdin().read_line(&mut input2);
        let mut palavra2 = input2.trim().as_bytes();

        let mut input3 = String::new();
        io::stdin().read_line(&mut input3);
        let secreta = input3.trim();

        let pos1 = secreta.find('_').unwrap();
        let pos2 = secreta.rfind('_').unwrap();

        if palavra1[pos1] == palavra2[pos2] || palavra1[pos2] == palavra2[pos1] {
            println!("Y");
        } else {
            println!("N");
        }
    }
}
