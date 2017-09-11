func returnFifteen() -> Int {
    var y = 10
    
    func add() {
        y += 5
    }
    add()
    
    return y
}

print(returnFifteen())

// Function can return fucntion too

func makeIncrement() -> ((Int) -> Int){
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    
    return addOne
}

var increment = makeIncrement()
print(increment(7))



// Function can take other function as its argument
func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item){
            return true
        }
    }
    return false
}

func lessThanTen(number: Int) -> Bool {
    return number < 10
}

var numbers = [20, 19, 7, 15]
print(hasAnyMatches(list: numbers, condition: lessThanTen))



