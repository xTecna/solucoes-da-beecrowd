use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let mut idade: i32 = input.trim().parse().unwrap();

    let mut soma: i32 = 0;
    let mut pessoas: i32 = 0;
    while(idade > 0){
        soma += idade;
        pessoas += 1;
        
        let mut input2 = String::new();
        io::stdin().read_line(&mut input2);
        idade = input2.trim().parse().unwrap();
    }

    println!("{:.2}", (soma as f64)/(pessoas as f64));
}
