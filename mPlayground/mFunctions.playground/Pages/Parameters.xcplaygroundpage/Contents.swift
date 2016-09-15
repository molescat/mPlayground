//: [Previous](@previous)
/*:
 ## Functions - parameters
 */
import UIKit

//: ----------------- Default parameters

func joiner(a: String, b: String, join: String = "", suffix: String = ".") -> String {
  return a + join + b + suffix
}

let dogCat = joiner(a: "dog", b: "cat")
let dogMinusCat = joiner(a: "dog", b: "cat", join: " - ", suffix: "!")


//: ----------------- Tuples

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

let statistics = calculate(scores: [5, 3, 100, 3, 9])
statistics.sum
statistics.2  // third tuple


//: ----------------- Var args

func sumOf(_ numbers: Int...) -> Int {
  var sum = 0
  for number in numbers {
    sum += number
  }
  return sum
}

sumOf(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)


//: [Next](@next)
