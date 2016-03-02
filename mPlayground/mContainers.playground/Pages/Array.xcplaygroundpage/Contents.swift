//: ----------------- Containers

import UIKit

var mString = "Hello, world"

func printMyType<T>(myType: T) {
  debugPrint("TypeName = \(_stdlib_getDemangledTypeName(myType))")
  debugPrint(myType)
}

//: ----------------- Array
let mEmptyArray = []
//printMyType(mEmptyArray)

var stringArray: [String] = []
stringArray.append("fish")
stringArray.append("dog")
printMyType(stringArray)

var mArray = ["apple", "banana"]
mArray[1]
mArray.append("cherry")
mArray += ["orange", "lemon"]

mArray[0...3] = ["dog", "cat"] // shortens the array
mArray

mArray.insert("frog", atIndex: 1)

mArray.removeLast()
mArray
mArray.count

//: ----------------- Reduce

var stats = [1,2,3,4,5,6,7,8,9,1,1,1,1,]
var average = Double(stats.reduce(0){$0 + $1}) / Double(stats.count)
average

//: [Next](@next)
