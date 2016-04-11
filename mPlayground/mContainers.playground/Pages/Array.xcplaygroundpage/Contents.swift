//: [Previous](@previous)
/*:
## Containers - Array
*/

import Foundation

var mString = "Hello, world"

func printMyType<T>(myType: T) {
  debugPrint("TypeName = \(myType.dynamicType)")
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


//: [Next](@next)
