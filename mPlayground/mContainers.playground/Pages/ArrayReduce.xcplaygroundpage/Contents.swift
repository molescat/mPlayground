//: [Previous](@previous)
/*:
 ## Array - reduce
 */
import Foundation

var stats = [1,2,3,4,5,6,7,8,9,10]
var average = Double(stats.reduce(0) {$0 + $1}) / Double(stats.count)
average

var total = stats.reduce(0, +)


var text = stats.reduce("|") { str, number in str + "\(number)|" }
text

var text2 = stats.reduce("|") { $0 + "\($1)|" }
text2

//: [Next](@next)
