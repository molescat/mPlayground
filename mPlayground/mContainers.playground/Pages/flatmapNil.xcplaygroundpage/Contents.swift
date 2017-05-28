//: [Previous](@previous)

import Foundation

var items: [Int?] = [1, 2, 3, 4, nil, 5, 6, 7]

var x = items.flatMap { $0 }
x

//: [Next](@next)
