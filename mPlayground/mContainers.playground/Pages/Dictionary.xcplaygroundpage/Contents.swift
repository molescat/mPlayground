//: [Previous](@previous)
/*:
## Dictionary
*/
import Foundation

let thingDict: [String : Any] = [
    "a" : 1,
    "b" : "cat",
    "c" : ["d" : "dog"],
    "e" : 2
]


var simpleDictionary: [String:Any] = [:]
simpleDictionary["pet"] = "fluffy"
simpleDictionary["books"] = 10
simpleDictionary

simpleDictionary.isEmpty
simpleDictionary["books"] = nil
simpleDictionary


var mDict = ["apple":1, "baNana":2]
mDict["orange"] = 3
//mDict["pear"] = "awesome" // Must be Int
mDict

var keys = [String](mDict.keys)
var values = [Int](mDict.values)

for (key, value) in mDict {
  print("Key '\(key)' Value '\(value)'")
}


var x = mDict.map {key, value in
  (key.lowercased(), value)}
x

var y = mDict.reduce([String:Any]()) { dict, pair in
  var d = dict
  d[pair.0.lowercased()] = pair.1
  return d
}
y
var myString = "hello the dog"
var myArray = Array(myString.characters)
var z = myArray.reduce("") { $1 == " "
  ? "\($0)-"
  : "\($0)\($1)" }
z


//: [Next](@next)
