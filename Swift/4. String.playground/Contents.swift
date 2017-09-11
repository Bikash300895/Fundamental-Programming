//: Playground - noun: a place where people can play

import UIKit

var optionalName: String? = "Shuvendu Bikash"
print(optionalName!)
// optionalName = nil

var greeting = "Hello! "

if let name = optionalName {
    greeting = "Hello \(name)"
}
print(greeting)





