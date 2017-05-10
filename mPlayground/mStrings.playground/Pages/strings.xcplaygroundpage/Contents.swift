//: [Previous](@previous)
/*:
 ## Strings
 */

import UIKit

let version = 33.333333333

//: ----------------- Basics

var name: String
name = "Ruffus"

var mString = "Hello, world"
mString += " cow"
mString = name
mString += " \(version)"
mString = NSString(format: "%.2f", version) as String

print("hello " + mString)
print("Welcome \(mString)")
print("String length \(mString.characters.count)")
print("Print varargs", mString, name)


//: ----------------- using strings

var animal = "dog"
var pet = "dog"
if pet == animal {
  print("Woof")
}

if pet.hasPrefix("do") {
  print("Nike")
}

var emptyString = ""
var alsoEmpty = String()
if emptyString == alsoEmpty {
  print("Empty")
}

if emptyString.isEmpty {
  print("Empty")
}


var wildAnimal = "elephant"
var zooAnimal = wildAnimal
zooAnimal += " (endangered)"

//: [Next](@next)
