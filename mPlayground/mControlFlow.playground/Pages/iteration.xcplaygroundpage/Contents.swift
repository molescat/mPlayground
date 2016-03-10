//: [Previous](@previous)
/*:
## Control Flow - iteration
*/
import Foundation

var mStringArray = ["dog", "cat", "fish"]

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

//: [Next](@next)
