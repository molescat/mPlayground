//: [Previous](@previous)
/*:
## Optional
*/
import Foundation

var optionalString: String? = "Hello"
//optionalString = nil
let forcedString: String = optionalString!
print(optionalString)

var implicitlyUnwrappedString: String! = "there"
var implicitString = implicitlyUnwrappedString

if let name = optionalString {
  print("\(name) \(implicitlyUnwrappedString)")
}

//: Nil Coalescing Operator
var x: String = optionalString ?? "sentinel"


//: [Next](@next)
