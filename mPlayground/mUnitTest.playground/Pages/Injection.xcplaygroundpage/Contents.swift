//: [Previous](@previous)

import Foundation

class Advertising {

  func providerURL(randomIdentifier: String) -> String {
    return String(format: "myRandomId=%@", randomIdentifier)
  }
  func providerURL() -> String {
    return providerURL(randomId)
  }
  
  private var randomId: String {
    let unitRandom = Double(arc4random()) / Double(UINT32_MAX)
    let tenDigitValue = unitRandom * 1e10
    
    return String(format: "%.0f", tenDigitValue)
  }
}


//: - Test

var adUnit = Advertising()
var id = adUnit.providerURL()
id.characters.count


//: -
class Advertising2 {
  
  func providerURL() -> String {
    return randomId()
  }
  
  private func randomId(random: Double = Double(arc4random()) / Double(UINT32_MAX) ) -> String {
    let tenDigitValue = random * 1e10
    return String(format: "%.0f", tenDigitValue)
  }
}

var adUnit2 = Advertising2()
var id2 = adUnit2.providerURL()
id2.characters.count

adUnit2.randomId(0.000000001)

//: [Next](@next)
