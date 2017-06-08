//: [Previous](@previous)

/*:
## structs
*/
import UIKit

//: ----------------- Read Only - eg volume

struct Cuboid {
  var width = 0.0, height = 0.0, depth = 0.0
  var volume: Double {
    return width * height * depth
  }
}
let fourByFiveByTwo = Cuboid(width: 4.0, height: 5.0, depth: 2.0)
fourByFiveByTwo.volume


//: ------------------ Property Observer

class StepCounter {
  var totalSteps: Int = 0 {
    willSet(newTotalSteps) {
      print("About to set totalSteps to \(newTotalSteps)")
    }
    didSet {
      if totalSteps > oldValue  {
        print("Added \(totalSteps - oldValue) steps")
      }
    }
  }
}
let stepCounter = StepCounter()
stepCounter.totalSteps = 200
// About to set totalSteps to 200
// Added 200 steps

//: -------------------- Type Properties

struct SomeStructure {
  static var storedTypeProperty = "Some value."
  static var computedTypeProperty: Int {
    return 23
  }
  static func someTypeMethod() {
    print("Hello some Type Method")
  }
}
SomeStructure.storedTypeProperty
SomeStructure.someTypeMethod()

//: [Next](@next)
