class Shape {
    var numberOfSides = 0
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func simpleSecription() -> String {
        return "A shape with \(numberOfSides) sides"
    }
}

var shape = Shape(name: "rectangle")
shape.numberOfSides = 3
print(shape.simpleSecription())

// Inheritance
class Square: Shape {
    var sideLength: Double
    
    init(sideLength: Double, name:String) {
        self.sideLength = sideLength
        super.init(name: name)
        super.numberOfSides = 4
        // or just    numberOfSides = 4
    }
    
    func area() -> Double {
        return sideLength * sideLength
    }
    
    override func simpleSecription() -> String {
        return "A Square with sides of length \(sideLength)"
    }
}

let sqr = Square(sideLength: 2.3, name: "test square")
print(sqr.area())
print(sqr.simpleSecription())


