//: [Previous](@previous)
/*:
 ## SequenceType extensions - Find My Element
 */

import Foundation

extension SequenceType {
  func findMyElement(match: Generator.Element->Bool) -> Generator.Element? {
    for element in self where match(element) {
      return element
    }
    return nil
  }
}


var list: [Animal] = [
  Animal(1, name: "cat"),
  Animal(3, name: "dog"),
  Animal(5, name: "fish"),
  Animal(8, name: "cow")]

var item = list.findMyElement { (object) -> Bool in
  return object.test(3)
}
item?.name

// Shorthand
item = list.findMyElement { $0.test(3) }
item?.name

//: [Next](@next)
