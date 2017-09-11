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

