use std::fs;

#[derive(Debug)]
struct Range {
    start: u64,
    end: u64,
}
fn main() {
    let data = [
        (11, 22),
        (95, 115),
        (998, 1012),
        (1188511880, 1188511890),
        (222220, 222224),
        (1698522, 1698528),
        (446443, 446449),
        (38593856, 38593862),
    ];
    let x = fs::read_to_string("data.txt").unwrap();
    let h: u64 = x
        .split(",")
        .map(parse_range)
        .flat_map(|range| -> Vec<u64> { handle_range(&range) })
        .sum();
    let ranges: u64 = data
        .into_iter()
        .map(|(start, end)| Range { start, end })
        .flat_map(|range| -> Vec<u64> { handle_range(&range) })
        .sum();
    println!("{:?}", ranges);
    println!("{:?}", h);
}

fn parse_range(str: &str) -> Range {
    let x: Vec<_> = str.split("-").collect();
    Range {
        start: x[0].trim().parse::<u64>().expect("start"),
        end: x[1].trim().parse::<u64>().expect("end"),
    }
}

fn handle_range(Range { start, end }: &Range) -> Vec<u64> {
    let mut count = *start;
    let mut ids: Vec<u64> = vec![];
    while count <= *end {
        let string_rep = count.to_string();
        let half = string_rep.chars().count() / 2;
        let first_half = &string_rep[0..half];
        let last_half = &string_rep[half..];
        if first_half == last_half {
            ids.push(count);
        }
        count += 1
    }
    ids
}
