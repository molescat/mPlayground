//: [Previous](@previous)

import Foundation

// ---------------------------------------- Optional
var optionalString: String? = "Hello"
//optionalString = nil

//let bang = optionalString!

if let name = optionalString {
  var result = name
  print(result, terminator: "")
}

// Nil Coalescing Operator
var x: String = optionalString ?? "sentinel"



//: [Next](@next)
