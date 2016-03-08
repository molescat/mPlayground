//: [Previous](@previous)
/*: https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/Protocols.html
## Protocol Composition

It can be useful to require a type to conform to multiple protocols at once. You can combine multiple protocols into a single requirement with a protocol composition. Protocol compositions have the form protocol<SomeProtocol, AnotherProtocol>. You can list as many protocols within the pair of angle brackets (<>) as you need, separated by commas.
*/

protocol HasTitle {
  var title: String { get }
}

//: The class *keyword* here, means conformance requires a class (rather than just a struct)
protocol Ratable: class {
  var ratings: [Int] { get set }
  func addRating(rating: Int)
  func getAverageRating() -> Double
}

protocol Purchasable: HasTitle {
  var price: Double { get set }
}

//: The *required* keyword means that inheriting classes must provide an implementation of the method.
class Book: Purchasable, Ratable {
  var title = ""
  var ratings = [Int]()
  var price = 0.0
  
  required init(title: String) {
    self.title = title
  }
  
  func addRating(rating: Int) {
    ratings.append(rating)
  }
  
  func getAverageRating() -> Double {
    return ratings.count == 0 ? 0.0
      : Double(ratings.reduce(0) { $0 + $1 }) / Double(ratings.count)
  }
  
}

let book = Book(title: "Harry Potter and the Philosopher's Stone")


class BluRay: Ratable, Purchasable {
  
  var ratings = [Int]()
  var title: String
  var price: Double
  
  init(title: String, price: Double) {
    self.title = title
    self.price = price
  }
  
  func addRating(rating: Int) {
    ratings.append(rating)
  }
  
  func getAverageRating() -> Double {
    return ratings.count == 0 ? 0.0 : Double(ratings.reduce(0) { $0 + $1 }) / Double(ratings.count)
  }
  
}

let bluRay = BluRay(title: "Harry Potter and the Ravages of Time", price: 39.56)


//: Type Aliasing, protocol composition

typealias LineItemable = protocol<Purchasable, Ratable>

let myCart: [LineItemable] = [book, bluRay]

func printLineItemsForCart(cart: [LineItemable]) {
  for item in cart {
    print("\(item.title) - $\(item.price) - rating: \(item.getAverageRating())")
  }
}

printLineItemsForCart(myCart)

//: [Next](@next)
