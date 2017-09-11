import UIKit

var list = [1, 2, 3, 4, 5]
print(list[2])

print(list)


// Dictionary
var dict = [
    "name" : "bikash",
    "roll" : 1407001,
] as [String: Any] // Note the requirement for this explicit type decleration

print(dict["name"]!) // note the ! which force it to must have a value

// Creating empty list
let emptyList = [String]()

// Creating empty dictionary
let emptyDict = [String: String]()



