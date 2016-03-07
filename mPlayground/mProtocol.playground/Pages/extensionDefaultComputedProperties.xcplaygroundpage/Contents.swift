//: [Previous](@previous)

import Foundation

/*: http://www.codingexplorer.com/swift-extensions/
Extensions can add computed instance properties and computed type properties to existing types.


There is something important to know before we go any further.  Swift extensions cannot add stored properties to a type.  You can make computed properties, but you cannot store them unless they store via a stored property that is already in the type you are extending (like if you added an extension to a Bool to take the Strings “Oui” or “Non” and just mapped them back to true and false and stored those as the Bool’s value).  You also cannot add property observers to properties that already exist in the type you are extending.

Default computed properties, for protocols

#### Protocol extension vs class extension in Swift

The protocol extension is usually the better option. Going down the protocol extension route means that you can create other conforming objects that are not a subclass of the extended class
*/

protocol Vehicular {
  var passengerCapacity: Int { get }
}

extension Vehicular {
  var passengerCapacity: Int {
    return 4
  }
}

//: ---

protocol Paintable: class {
  var primaryBodyColor: String { get set }
  var secondaryBodyColors: [String]? { get set }
  
  func paint(newPrimaryColor: String, newSecondaryColors: [String])
}

extension Paintable {
  var primaryBodyColor: String {
    get {
      return "black"
    }
    
    set { }
  }
}

//: ---

protocol Motorized {
  var engineSizeCc: Int { get }
}

extension Motorized {
  func internalEngineSizeDefault() -> Int { return 2300 }
  var engineSizeCc: Int { return internalEngineSizeDefault() }
}

//: ---

class Sedan: Vehicular, Paintable, Motorized {
  
  var secondaryBodyColors: [String]?
  var engineSizeCc: Int = 0 // Basically this overides the protocol extension
  
  init(engineSizeCc: Int) {
//    self.engineSizeCc = engineSizeCc
    self.engineSizeCc = internalEngineSizeDefault()
  }
  
  func paint(newPrimaryColor: String, newSecondaryColors: [String]) {
    primaryBodyColor = newPrimaryColor
    secondaryBodyColors = newSecondaryColors
  }
  
}

let sedan = Sedan(engineSizeCc: 4000)
sedan.passengerCapacity
sedan.primaryBodyColor
sedan.engineSizeCc

sedan.paint("red", newSecondaryColors: ["white stripes"])

/*: 
## QUESTION
How does Sedan access what the protocol extension provided as a default for engineSizeCc?
*/

//: [Next](@next)
