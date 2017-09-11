func greet (person: String, day: String) -> String {
    return "Hello \(person). Today is \(day)"
}

print(greet(person: "Bikash", day: "TuesDay"))


// Labels of arguments
func greet2 (_ person: String, on day: String) -> String {
    return "Hello \(person). Today is \(day)"
}

print(greet2("Bikash", on: "Friday"))


// use tuple to return compund value
func calcStat(scores: [Int]) -> (min: Int, max:Int, sum:Int){
    var min = scores[0]
    var max = scores[1]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }
    
    return (min, max, sum)
}

var ans = calcStat(scores: [1,2,3])
print(ans)

