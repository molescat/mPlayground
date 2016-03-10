//: [Previous](@previous)
/*:
## Classes - singleton
*/
import Foundation

// Note the init is private
//let mySingleton = SimpleSingleton()

let mySingletonA = SimpleSingleton.sharedInstance
mySingletonA.title = "A"

let mySingletonB = SimpleSingleton.sharedInstance
mySingletonB.title = "B"

print(mySingletonA.title)
print(mySingletonB.title)

//: [Next](@next)
