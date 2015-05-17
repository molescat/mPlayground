// Playground - Containers
// Arrays, Dictionaries

import UIKit

var mString = "Hello, world"

func printMyType<T>(myType: T) {
  println("TypeName = \(_stdlib_getDemangledTypeName(myType))")
}

// ---------------------------------------- Array
let mEmptyArray = []
//printMyType(mEmptyArray)

var stringArray: [String] = []
stringArray.append("fish")


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


// ---------------------------------------- Dictionary
let thingDict = [
  "a" : 1,
  "b" : "cat",
  "c" : ["d" : "dog"],
  "e" : 2
]
//printMyType(thingDict)


let mEmptyDictionary = [:]
//printMyType(mEmptyDictionary)

var simpleDictionary: [String:AnyObject] = [:]
simpleDictionary["pet"] = "fluffy"
simpleDictionary["books"] = 10
simpleDictionary

simpleDictionary.isEmpty
simpleDictionary["books"] = nil
simpleDictionary


var mDict = ["apple":1, "banana":2]
mDict["orange"] = 3
//mDict["pear"] = "awesome" // Must be Int
mDict

var keys = [String](mDict.keys)

var values = [Int](mDict.values)

for (key, value) in mDict {
  println("\(key) \(value)")
}
