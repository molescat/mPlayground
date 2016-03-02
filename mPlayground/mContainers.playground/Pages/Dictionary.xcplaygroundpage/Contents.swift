//: [Previous](@previous)

import Foundation

//: ----------------- Dictionary

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


var mDict: [String : AnyObject] = ["apple":1, "baNana":2]
mDict["orange"] = 3
//mDict["pear"] = "awesome" // Must be Int
mDict

var keys = [String](mDict.keys)

//var values = [Int](mDict.values)

for (key, value) in mDict {
    print("Key '\(key)' Value '\(value)'")
}

var x = mDict.map {(key, value) in (key.lowercaseString, value)}
x

var y = mDict.reduce([String:AnyObject]()) { dict, pair in
  var d = dict
  d[pair.0.lowercaseString] = pair.1
  return d
}
y

Array(y.keys)[0]


var myString = "hello the dog"
var myArray = Array(myString.characters)
var z = myArray.reduce("") { $1 == " "
  ? "\($0)-"
  : "\($0)\($1)" }
z

mDict
Array(mDict.keys)[0]


//- 
func transformKey(key: String) -> String? {
  let mapping = [
    "a" : "xxx",
    "b" : "yyy"
  ]
  return mapping[key]
}

func transformEngagementProperties(properties: [NSObject : AnyObject]) -> [NSObject : AnyObject] {

  var transformedProperties = properties
  
  if let engagement = properties["engagement"] as! [NSObject : AnyObject]!
  {
    transformedProperties.removeValueForKey("engagement")
    
    engagement.forEach {
      
      if let oldKey = $0 as? String,
        key = transformKey(oldKey) {
        transformedProperties[key] = $1
      }
    }
  }
  
  return transformedProperties
}

var d = ["engagement" : ["a" : 1, "b" : 2, "c" : 3]]
var e = transformEngagementProperties(d)


//: [Next](@next)
