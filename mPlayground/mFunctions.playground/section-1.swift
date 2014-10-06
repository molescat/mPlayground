// Playground - noun: a place where people can play

import UIKit

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
hasAnyMatches(numbers, lessThanTen)


// ---------------------------------------- Closure
var numbersToMap = [10, 12, 8, 16]
let answer = numbersToMap.map({
  (number: Int) -> Int in
  let result = 2 * number
  return result
})
answer

