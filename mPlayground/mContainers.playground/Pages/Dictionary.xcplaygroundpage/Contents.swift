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


var mDict = ["Apple":1, "baNana":2]
mDict["orange"] = 3
//mDict["pear"] = "awesome" // Must be Int
mDict

var keys = [String](mDict.keys)
var values = [Int](mDict.values)

for (key, value) in mDict {
  print("Key '\(key)' Value '\(value)'")
}


var lowerCased = mDict.map {
  return ($0.key.lowercased(), $0.value)
}
lowerCased

var lowerCasedFruit = mDict.reduce([String:Any]()) { dict, pair in
  var d = dict
  d[pair.0.lowercased()] = pair.1
  return d
}
lowerCasedFruit
var mySentence = "hello the dog"
var myCharacters = Array(mySentence.characters)
var z = myCharacters.reduce("") { $1 == " "
  ? "\($0)-"
  : "\($0)\($1)" }
z

//: [Next](@next)
