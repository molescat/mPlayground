//: [Previous](@previous)
/*:
 ## Functions - functions as objects
 */
import Foundation

//: ----------------- Returning func

func makeIncrementer() -> ((Int) -> Int) {
  func addOne(number: Int) -> Int {
    return number + 1
  }
  return addOne
}
var increment = makeIncrementer()
increment(7)


//: ----------------- Passing in func

func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
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
hasAnyMatches(list: numbers, condition: lessThanTen)


//: ----------------- Function as a return type

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

//: [Next](@next)
