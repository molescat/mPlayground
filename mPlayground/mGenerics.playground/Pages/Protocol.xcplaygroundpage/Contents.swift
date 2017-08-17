//: [Previous](@previous)
/*:
 ## Generics
 */

import Foundation

func swapTwoValues<T>(_ a: inout T, _ b: inout T) {
  let tempA = a
  a = b
  b = tempA
}

var a = 10
var b = 123

swapTwoValues(&a, &b)
a
b
