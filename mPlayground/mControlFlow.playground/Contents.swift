// Playground - Control Flow

import UIKit

var mStringArray = ["dog", "cat", "fish"]

//  ---------------------------------------- if
var temperatureInFahrenheit = 30
if temperatureInFahrenheit <= 32 {
  print("It's freezing")
} else if temperatureInFahrenheit > 86 {
  print("It's damn hot")
} else {
  print("It's meh")
}

//  ---------------------------------------- iteration
var concat: String = ""
for item in mStringArray {
  concat += item
  print(concat)
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
  print("\(creature) = \(legs)")
}

for var index = 0; index < 3; ++index {
  print("index = \(index)")
}


// ----------------------------------------- Switch

let die1 = [1,2,3,4,5,6]
let die2 = [1,2,3,4,5,6]

let rolled = (die1[2], die2[3])

switch rolled {
case (1, 1):
  print("cat's eye")
case let (a, _) where rolled.0 == rolled.1:
  print("doubles \(a)")
case let (a, b) where rolled.0 + rolled.1 == 7:
  print("sevens \(a) & \(b)")
case (6, _):
  fallthrough
case (_, 6):
  print("a six")
default:
  print("nothing")
}

