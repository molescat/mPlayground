//: [Previous](@previous)
/*:
 ## Classes - avoid reference cycle
 */
import Foundation

class Band {
  var drummer: Drummer

  init(drummer: Drummer) {
    self.drummer = drummer
  }

  deinit {
    print("Band will be deallocated")
  }
}

class Drummer {
  weak var band: Band?
  //  var band: Band?

  deinit {
    print("Drummer will be deallocated")
  }
}

var ringo: Drummer? = Drummer()

var beatles: Band? = Band(drummer: ringo!)

ringo?.band = beatles

ringo = nil
beatles = nil

//: [Next](@next)
