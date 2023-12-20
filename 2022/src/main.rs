mod one;
mod two;

// give me a function that works like this:
// kubernetes -> k8s
// internationalization -> i18n
fn abbreviate(s: &str) -> String {
    let count = s.len() - 2;
    format!("{}{}{}", s.chars().next().unwrap(), count, s.chars().last().unwrap())
}

fn main() {
    // Call a function defined in one.rs
    // one::task1();
    // one::task2();
    println!("{}", abbreviate("internationalization"));
    println!("{}", abbreviate("theodor"));
    two::task1();
    two::task2();
}
