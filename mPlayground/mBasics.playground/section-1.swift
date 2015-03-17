// Playground - Basics
// Plain old types, strings, and optionals

import UIKit

// ---------------------------------------- Plain types
let mVersion = 1.0
let mFloat: Float = -33.861382
var mDouble = 1.3
var mCount = 1


// ---------------------------------------- Strings
var mString = "Hello, world"
mString += " cow"
mString = "dog"
mString += " \(mVersion)"
mString = "cat "
mString += "fish"
mString = NSString(format: "%.2f", mFloat)
println("hello" + "test")


// ---------------------------------------- Number conversions
let stringNumber = "123"
var mInt = stringNumber.toInt()!
var someNumber: Int = stringNumber.toInt()!


// ---------------------------------------- Optional
var optionalString: String? = "Hello"
//optionalString = nil

if let name = optionalString {
  var result = name
  println(result)
}

// Nil Coalescing Operator
var x: String = optionalString ?? "sentinel"

