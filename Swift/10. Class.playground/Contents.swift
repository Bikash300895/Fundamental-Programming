class Shape {
    var numberOfSides = 0
    
    func simpleSecription() -> String {
        return "A shape with \(numberOfSides) sides"
    }
}

var shape = Shape()
shape.numberOfSides = 3
print(shape.simpleSecription())
