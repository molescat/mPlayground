//: [Previous](@previous)

import Foundation

//------------------------- Extension with Where

extension RawRepresentable where RawValue: IntegerType {
  
  func nextCase() -> Self? {
    return Self(rawValue: self.rawValue + 1)
  }
  
  func previousCase() -> Self? {
    return Self(rawValue: self.rawValue - 1)
  }
  
}

enum Number: UInt8 {
  case One = 1, Two, Three, Four, Five
}

if let threeNextsAfterTwo = Number(rawValue: 2)?.nextCase()?.nextCase()?.nextCase() {
  print(threeNextsAfterTwo)
}

let oneBeforeOne = Number(rawValue: 1)?.previousCase()


//: ---

protocol Bird {
  var name: String { get }
  var canFly: Bool { get }
}

protocol Flyable {
  var airspeedVelocity: Double { get }
}

extension Bird where Self: Flyable {
  // Flyable birds can fly!
  var canFly: Bool { return true }
}

struct FlappyBird: Bird, Flyable {
  let name: String
  let flappyAmplitude: Double
  let flappyFrequency: Double
  //  let canFly = true
  
  var airspeedVelocity: Double {
    return 3 * flappyFrequency * flappyAmplitude
  }
}

struct Penguin: Bird {
  let name: String
  let canFly = false
}

var tweety = FlappyBird(name: "Yellow", flappyAmplitude: 1.0, flappyFrequency: 10.0)
tweety.canFly

var pengo = Penguin(name: "Pengy")
pengo.canFly


//: [Next](@next)
