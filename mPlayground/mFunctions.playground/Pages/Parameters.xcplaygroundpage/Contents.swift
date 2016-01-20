//: [Previous](@previous)
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


//: [Next](@next)
