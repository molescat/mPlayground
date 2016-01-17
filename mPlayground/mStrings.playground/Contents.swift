// Playground - Strings

import UIKit

let version = 33.333333333

// ---------------------------------------- Strings
var name: String
name = "Ruffus"

var mString = "Hello, world"
mString += " cow"
mString = name
mString += " \(version)"
mString = NSString(format: "%.2f", version) as String

print("hello " + mString, terminator: "")
print("Welcome \(mString)", terminator: "")
print("String length \(mString.characters.count)")


// ---------------------------------------- using strings
var animal = "dog"
var pet = "dog"
if pet == animal {
  print("Woof", terminator: "")
}

if pet.hasPrefix("do") {
  print("Nike", terminator: "")
}

var emptyString = ""
var alsoEmpty = String()
if emptyString == alsoEmpty {
  print("Empty", terminator: "")
}

if emptyString.isEmpty {
  print("Empty", terminator: "")
}


var wildAnimal = "elephant"
var zooAnimal = wildAnimal
zooAnimal += " (endangered)"
wildAnimal

