//: [Previous](@previous)
/*: http://www.raywenderlich.com/109156/introducing-protocol-oriented-programming-in-swift-2
## Protocols

Why Not Base Classes?
Protocol extensions and default implementations may seem similar to using a base class or even abstract classes in other languages, but they offer a few key advantages in Swift:
Because types can conform to more than one protocol, they can be decorated with default behaviors from multiple protocols. Unlike multiple inheritance of classes which some programming languages support, protocol extensions do not introduce any additional state.
Protocols can be adopted by classes, structs and enums. Base classes and inheritance are restricted to class types.
*/

//: Default parameters cannot be defined in the protocol itself

protocol DemonstratesProtocol {
  var propertyRequirement: String { get set }
  
  init?(x: Int, y: Int)
  
  func methodRequirement(input: String?) -> Int?
  
  subscript(x: Int, y: Int) -> Int { get set }
}

//: [Next](@next)
