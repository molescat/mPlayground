// Playground - Control Flow

import UIKit

var mStringArray = ["dog", "cat", "fish"]

//  ---------------------------------------- if
var temperatureInFahrenheit = 30
if temperatureInFahrenheit <= 32 {
  print("It's freezing", terminator: "")
} else if temperatureInFahrenheit > 86 {
  print("It's damn hot", terminator: "")
} else {
  print("It's meh", terminator: "")
}

//  ---------------------------------------- iteration
var concat: String = ""
for item in mStringArray {
  concat += item
  print(concat, terminator: "")
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
  print("\(creature) = \(legs)", terminator: "")
}

for var index = 0; index < 3; ++index {
  print("index = \(index)", terminator: "")
}


// ----------------------------------------- Switch
var test = "catfish"
switch test {
case "cat":
  print("Meow", terminator: "")
case "dog", "fish":
  print("Woof/bubble", terminator: "")
case let x where x.hasSuffix("atfish"):
  print("Thing is \(x)", terminator: "")
  fallthrough  // C Styled case switch
default:
//  println("huh?")
  break // default needs at least one statement
}

