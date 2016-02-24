//: [Previous](@previous)

import Foundation

//-------------- Default computed properties, for protocols

protocol Vehicular {
  var passengerCapacity: Int { get }
}

extension Vehicular {
  var passengerCapacity: Int {
    return 4
  }
}

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

protocol Wheeled {
  var numberOfWheels: Int { get }
}

extension Wheeled {
  var numberOfWheels: Int {
    return 4
  }
}

protocol Motorized {
  var engineSizeCc: Int { get }
}

extension Motorized {
  var engineSizeCc: Int {
    return 2300
  }
}

class Sedan: Vehicular, Paintable, Wheeled, Motorized {
  
  var secondaryBodyColors: [String]?
  var engineSizeCc: Int  // Basically this overides the protocol extension
  
  init(engineSizeCc: Int) {
    self.engineSizeCc = engineSizeCc
  }
  
  func paint(newPrimaryColor: String, newSecondaryColors: [String]) {
    primaryBodyColor = newPrimaryColor
    secondaryBodyColors = newSecondaryColors
  }
  
}

let sedan = Sedan(engineSizeCc: 4000)
sedan.passengerCapacity
sedan.primaryBodyColor
sedan.numberOfWheels
sedan.engineSizeCc

sedan.paint("red", newSecondaryColors: ["white stripes"])


//: [Next](@next)
