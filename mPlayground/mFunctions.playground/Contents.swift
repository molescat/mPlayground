// Playground - Functions

import UIKit

// ---------------------------------------- Passing out a value
func passingOut(inout number :Int) {
  number += 10
}

var myNumber = 10
passingOut(&myNumber)
myNumber


// ---------------------------------------- Local mutable copy of passed in variable
func simpleAddition(var number :Int) -> Int {
  number += 10
  return number
}

var anotherNumber = 10
simpleAddition(anotherNumber)
anotherNumber


// ---------------------------------------- Default parameters
func joiner(a :String, b :String, join :String = "", suffix :String = ".") -> String {
  return a + join + b + suffix
}

let dogCat = joiner("dog", b: "cat")
let dogMinusCat = joiner("dog", b: "cat", suffix: "!", join: " - ")


// ---------------------------------------- Tupples
func calculate(scores: [Int]) ->(min: Int, max: Int, sum: Int) {
  var min = scores[0]
  var max = scores[0]
  var sum = 0
  
  for score in scores {
    if score > max {
      max = score
    } else if score < min {
      min = score
    }
    sum += score
  }
  return (min, max, sum)
}

let statistics = calculate([5, 3, 100, 3, 9])
statistics.sum
statistics.2  // third tupple


// ---------------------------------------- Var args
func sumOf(numbers: Int...) -> Int {
  var sum = 0
  for number in numbers {
    sum += number
  }
  return sum
}

sumOf(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)


// ---------------------------------------- Nesting
func simpleFunc() -> Int {
  var y = 10
  func addFive() {
    y += 5
  }
  addFive()
  return y
}

simpleFunc()


// ---------------------------------------- Returning func
func makeIncrementer() -> (Int -> Int) {
  func addOne(number: Int) -> Int {
    return number + 1
  }
  return addOne
}
var increment = makeIncrementer()
increment(7)


// ---------------------------------------- Passing in func
func hasAnyMatches(list: [Int], condition: Int -> Bool) -> Bool {
  for item in list {
    if condition(item) {
      return true
    }
  }
  return false
}
func lessThanTen(number: Int) -> Bool {
  return number < 10
}

var numbers = [20, 19, 7, 12]
hasAnyMatches(numbers, condition: lessThanTen)


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
let reverseNumbers = strangeNumbers.sortInPlace(backwards)


let sortedNumbers = strangeNumbers.sortInPlace { $0 > $1 }
sortedNumbers


let sortedNumbersA = strangeNumbers.sortInPlace(>)
sortedNumbersA


// ---------------------------------------- Trailing Closure
func someFunctionThatTakesAClosure(closure: () -> ()) {
  closure()
}

someFunctionThatTakesAClosure({print("without using trailing closure")})

someFunctionThatTakesAClosure() {
  print("Using trailing closure")
}


// ---------------------------------------- Function as a return type
func makeIncrementor(forIncrement amount :Int) -> () -> Int {
  var runningTotal = 0
  func incrementor() -> Int {
    runningTotal += amount
    return runningTotal
  }
  return incrementor
}

let incrementByTen = makeIncrementor(forIncrement: 10)
incrementByTen()
incrementByTen()

let incrementByFive = makeIncrementor(forIncrement: 5)
incrementByFive()

incrementByTen()


