//: [Previous](@previous)

import Foundation

//: ----------------- Failable initializers

class Product {
  let name: String!
  init?(name: String) {
    self.name = name
    if name.isEmpty { return nil }
  }
}

if let tool = Product(name: "hammer") {
  // no need to check if tool.name == nil
  print("The Product name is \(tool.name)")
}

class CartItem: Product {
  let quantity: Int!
  init?(name: String, quantity: Int) {
    self.quantity = quantity
    super.init(name: name)
    if quantity < 1 { return nil }
  }
}

if let oneUnnamed = CartItem(name: "", quantity: 1) {
  print("Item: \(oneUnnamed.name), quantity: \(oneUnnamed.quantity)")
} else {
  print("Unable to initialize one unnamed product")
}


//: [Next](@next)
