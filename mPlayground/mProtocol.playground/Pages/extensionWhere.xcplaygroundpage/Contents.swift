//: [Previous](@previous)
/*: https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/Protocols.html#//apple_ref/doc/uid/TP40014097-CH25-ID521 Also  https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/Generics.html#//apple_ref/doc/uid/TP40014097-CH26-ID192
## Where

### Adding Constraints to Protocol Extensions

When you define a protocol extension, you can specify constraints that conforming types must satisfy before the methods and properties of the extension are available. You write these constraints after the name of the protocol you’re extending using a `where` clause
*/

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

var tweety = FlappyBird(name: "Tweety", flappyAmplitude: 1.0, flappyFrequency: 10.0)
tweety.canFly

var pengo = Penguin(name: "Pengy")
pengo.canFly
//: [Next](@next)
