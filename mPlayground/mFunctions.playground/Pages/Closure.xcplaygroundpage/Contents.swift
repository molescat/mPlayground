//: [Previous](@previous)
/*:
 ## Closure
 */
import Foundation

var strangeNumbers = [10, 100, 8, 16]

//: ----------------- map

let doubledNumbers = strangeNumbers.map({
  (number: Int) -> Int in
  let result = 2 * number
  return result
})
doubledNumbers

let trippledNumbers = strangeNumbers.map({ number in
  3 * number })
trippledNumbers

//: ----------------- sort

func backwards(_ a: Int, _ b: Int) -> Bool {
  return a > b
}
let reverseNumbers = strangeNumbers.sorted(by: backwards)

let sortedNumbers = strangeNumbers.sorted { $0 > $1 }
sortedNumbers

strangeNumbers.sorted(by: <)
strangeNumbers

strangeNumbers.sort(by: <)  // Mutate
strangeNumbers

//: ----------------- Trailing Closure shorthand

func someFunctionThatTakesAClosure(_ closure: () -> Void) {
  closure()
}

someFunctionThatTakesAClosure({
  print("without using trailing closure")
})

someFunctionThatTakesAClosure {
  print("Using trailing closure")
}

// ---
var names = ["Steve", "Bill", "Woz", "Stew", "Myles", "Rie"]

let sNames = names.filter({ (name: String) -> Bool in
  return name.lowercased().characters.first! == "s"
})

let sNames2 = names.filter { name -> Bool in
  return name.lowercased().characters.first! == "s"
}

let sNames3 = names.filter { name -> Bool in
  return name.lowercased().characters.first! == "s"
}

let sNames4 = names.filter { name in
  return name.lowercased().characters.first! == "s"
}

let sNames5 = names.filter { name in
  name.lowercased().characters.first! == "s"
}

let sNames6 = names.filter {
  $0.lowercased().characters.first! == "s"
}

//: [Next](@next)
