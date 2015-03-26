// Playground - Strings

import UIKit

let version = 33.333333333

// ---------------------------------------- Strings
var mString = "Hello, world"
mString += " cow"
mString = "dog"
mString += " \(version)"
mString = "cat "
mString += "fish"
mString = NSString(format: "%.2f", version)
println("hello " + mString)
println("Welcome \(mString)")
println("String length \(countElements(mString))")


// ---------------------------------------- Strings
var animal = "dog"
var pet = "dog"
if pet == animal {
  println("Woof")
}

if pet.hasPrefix("do") {
  println("Nike")
}

var emptyString = ""
var alsoEmpty = String()
if emptyString == alsoEmpty {
  println("Empty")
}

if emptyString.isEmpty {
  println("Empty")
}
