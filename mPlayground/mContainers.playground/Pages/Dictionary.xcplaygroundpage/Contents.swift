//: [Previous](@previous)

import Foundation

// ---------------------------------------- Dictionary
let thingDict = [
    "a" : 1,
    "b" : "cat",
    "c" : ["d" : "dog"],
    "e" : 2
]


let mEmptyDictionary = [:]

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
    print("Key '\(key)' Value '\(value)'")
}

//: [Next](@next)
