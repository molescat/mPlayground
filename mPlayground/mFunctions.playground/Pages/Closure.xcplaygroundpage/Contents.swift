//: [Previous](@previous)

import Foundation

// ---------------------------------------- Closure (sort, map)
var strangeNumbers = [10, 100, 8, 16]

let doubledNumbers = strangeNumbers.map({
  (number: Int) -> Int in
  let result = 2 * number
  return result
})
doubledNumbers

let trippledNumbers = strangeNumbers.map({ number in
  3 * number })
trippledNumbers


func backwards(a :Int, b :Int) -> Bool {
  return a > b
}
let reverseNumbers = strangeNumbers.sort(backwards)

let sortedNumbers = strangeNumbers.sort{ $0 > $1 }
sortedNumbers

strangeNumbers.sortInPlace(<)


// ---------------------------------------- Trailing Closure
func someFunctionThatTakesAClosure(closure: () -> ()) {
  closure()
}

someFunctionThatTakesAClosure({print("without using trailing closure")})

someFunctionThatTakesAClosure() {
  print("Using trailing closure")
}

//: [Next](@next)
