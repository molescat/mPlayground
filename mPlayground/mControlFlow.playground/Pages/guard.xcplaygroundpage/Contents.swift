//: [Previous](@previous)
/*:
## Control Flow - guard
*/
import Foundation

func greet(person: [String: String]) {
  guard let name = person["name"] else {
    return
  }
  
  print("Hello \(name)")
  
  guard let location = person["location"] else {
    print("Where are you")
    return
  }
  
  print("I hope the weather is nice in \(location)")
}

greet(["name":"Bill"])
//greet(["name":"Steve", "location":"Cupertino"])

//: [Next](@next)
