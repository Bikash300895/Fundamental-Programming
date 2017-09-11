
let interestingNumber = [
    "Prime" : [2,3,5,7,11,13],
    "Fibonacci" : [1,1,2,3,5,8]
]

var largest = 0
for (kind, numbers) in interestingNumber {
    for number in numbers{
        if number > largest {
            largest = number
        }
    }
}

print(largest)
