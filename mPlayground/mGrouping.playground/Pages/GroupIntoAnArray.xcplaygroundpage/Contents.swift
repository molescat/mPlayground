//: [Previous](@previous)

import Foundation

class Listing : CustomStringConvertible {
  let latitude: Int!
  let name: String!
  init(latitude: Int, name: String) {self.latitude = latitude; self.name = name }
  
  func makeKey() -> String {
    return String(self.latitude)
  }
  
  var description: String { return "\(name) at \(latitude)" }
}

let testListing = Listing(latitude: 0, name: "Test")
testListing.makeKey()

let listings:[Listing] = [
  Listing(latitude: 1, name: "Alice"),
  Listing(latitude: 2, name: "Bob"),
  Listing(latitude: 3, name: "Charles"),
  Listing(latitude: 1, name: "David"),
  Listing(latitude: 4, name: "Eric"),
  Listing(latitude: 2, name: "Frank")
]

var map: [String:Int] = [:]
var results: [[Listing]] = []
var counter: Int = 0

for listing in listings {
  let key = listing.makeKey()
  if let index = map[key] {
    results[index].append(listing)
  } else {
    results.append([])
    results[counter].append(listing)
    map[key] = counter++
  }
}

map

for (item) in results {
  print(item)
}

//: [Next](@next)
