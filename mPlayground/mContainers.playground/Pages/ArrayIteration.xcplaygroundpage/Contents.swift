//: [Previous](@previous)
/*:
 ## Array - iteration
 */

import UIKit

var theViews: [UIView]
theViews = (0..<10).map { ord in
  UIView(frame: CGRect(x: ord, y: 0, width: 0, height: 0))
}

theViews

var container = UIView()

theViews.forEach(container.addSubview)
container.subviews.forEach { view in
  print(view)
}

//: Traps
(0..<10).forEach { number in
  print(number)
  if number > 2 { return } // Note this just returns from the closure, it does NOT short circut the forEach
  print("marker")
}

//: Iterations
let collection = [10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]

print("\nIteration - all")
for x in collection {
  print(x)
}

print("\nIteration - all, bar first")
for x in collection.dropFirst() {
  print(x)
}

print("\nIteration - all, bar last five")
for x in collection.dropLast(5) {
  print(x)
}

print("\nIteration - index / item")
for (num, item) in collection.enumerated() {
  print("\(num) - \(item)")
}

print("\nIteration - find first index")
if let index = collection.index(of: 15) {
  print(index)
}

print("\nIteration - find first index passing predicate")
func myPredicate(x: Int) -> Bool { return x == 15 }
if let index = collection.index(where: myPredicate) {
  print(index)
}

print("\nMapped - using function/closure")
//func myTransform(x: Int) -> String { return "* \(x)" }
//let transformed = collection.map(myTransform)
let transformed = collection.map { return "* \($0)" }
print(transformed)

print("\nFiltered - using closure")
let fitlered = collection.filter { return $0 % 2 == 0 }
print(fitlered)

//: [Next](@next)
