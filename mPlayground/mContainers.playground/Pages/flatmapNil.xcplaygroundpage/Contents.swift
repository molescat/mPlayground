//: [Previous](@previous)

import Foundation

var items: [Int?] = [1, 2, 3, 4, nil, 5, 6, 7]

let itemsWithoutNil = items.flatMap { $0 }
itemsWithoutNil

//: [Next](@next)
