// Playground - Control Flow

import UIKit

var mStringArray = ["dog", "cat", "fish"]

//  ---------------------------------------- if
var temperatureInFahrenheit = 30
if temperatureInFahrenheit <= 32 {
  println("It's freezing")
} else if temperatureInFahrenheit > 86 {
  println("It's damn hot")
} else {
  println("It's meh")
}

//  ---------------------------------------- iteration
var concat: String = ""
for item in mStringArray {
  concat += item
  println(concat)
}
concat


var total = 0
for i in 1...10
{
  total += i
}
total


total = 0
for i in 1..<10  // Half open
{
  total += i
}
total


// ----------------------------------------- Switch
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
