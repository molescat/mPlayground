// Playground - Containers
// Arrays, Dictionaries

import UIKit

var mString = "Hello, world"

func printMyType<T>(myType: T) {
  println("TypeName = \(_stdlib_getTypeName(myType))")
}

// ---------------------------------------- Dictionary
let mEmptyDictionary = [:]
printMyType(mEmptyDictionary)

var mDict = ["apple":1, "banana":2]
mDict["orange"] = 3
mDict


// ---------------------------------------- Array
let mEmptyArray = []
printMyType(mEmptyArray)

var mArray = ["apple", "banana"]
mString = mArray[1]
mArray.append("cherry")
mArray += ["orange", "lemon"]

