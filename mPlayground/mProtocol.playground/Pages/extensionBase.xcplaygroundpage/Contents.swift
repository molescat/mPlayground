//: [Previous](@previous)
/*:
 If you do define it in the protocol then you get an infinite loop because it still resolves to the one in the struct, even after casting
 
 If `passengerCapacity` is defined in the protocol itself things go bad - try it and see
*/
import Foundation

protocol Vehicular {
//  var passengerCapacity: Int { get }
}

extension Vehicular {
  var passengerCapacity: Int {
    return 4
  }
}

struct Subaru: Vehicular {
  var useDefault = true
  var passengerCapacity: Int {
    if useDefault {
      return (self as Vehicular).passengerCapacity
    }
    return 5
  }
}

var car = Subaru()
car.useDefault = false
car.passengerCapacity

//: [Next](@next)
