//: [Previous](@previous)
/*:
## Optional
*/
import Foundation

var optionalString: String? = "Hello"
//optionalString = nil

//let bang = optionalString!

if let name = optionalString {
  var result = name
  print(result)
}

//: Nil Coalescing Operator
var x: String = optionalString ?? "sentinel"


//: [Next](@next)
