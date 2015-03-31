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
for i in 1...10 { // Closed range
  total += i
}
total

total = 0
for i in 1..<10 { // Half open
  total += i
}
total

total = 0
for _ in 1...10 {
  total += 2
}
total

let numberOfLegs = ["spider" : 8, "ant" : 6, "dog" : 4]
for (creature, legs) in numberOfLegs {
  println("\(creature) = \(legs)")
}

for var index = 0; index < 3; ++index {
  println("index = \(index)")
}


// ----------------------------------------- Switch
var test = "catfish"
switch test {
case "cat":
  println("Meow")
case "dog", "fish":
  println("Woof/bubble")
case let x where x.hasSuffix("atfish"):
  println("Thing is \(x)")
  fallthrough  // C Styled case switch
default:
//  println("huh?")
  break // default needs at least one statement
}

