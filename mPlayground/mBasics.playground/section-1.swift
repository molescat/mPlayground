// Playground - noun: a place where people can play

import UIKit

// Plain types
let mVersion = 1.0
let mFloat: Float = -33.861382
var mDouble = 1.3
var mCount = 1


// Strings
var mString = "Hello, world"
mString += " cow"
mString = "dog"
mString += " \(mVersion)"
mString = "cat "
mString += "fish"
mString = NSString(format: "%.2f", mFloat)
println("hello" + "test")


// Number conversions
let stringNumber = "123"
var mInt = stringNumber.toInt()!
var someNumber: Int = stringNumber.toInt()!


// Containers - Dictionary
var mDict = ["apple":1, "banana":2]
mDict["orange"] = 3
mDict
println(mDict)


// Containers - Array
var mArray = ["apple", "banana"]
mString = mArray[1]
mArray.append("cherry")
mArray += ["orange", "lemon"]
println(mArray)


// Control flow
var total: String = ""
for item in mArray {
  total += item
  println(total)
}
total

var number = 0
for i in 1...10
{
  number += i
}
number


// Optional
var optionalString: String? = "Hello"
//optionalString = nil;

if let name = optionalString {
  var result = name
  println(result)
}

// Nil Coalescing Operator
var x: String = optionalString ?? "sentinel"


// Switch
var test = "cat"
switch test {
  case "cat":
    println("meow")
  case "dog":
    println("woof")
  case let x where x.hasSuffix("at"):
    println(" thing is \(x)")
  default:
    println("huh")
}


