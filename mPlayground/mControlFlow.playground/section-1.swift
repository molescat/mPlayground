// Playground - noun: a place where people can play

import UIKit

var mStringArray = ["dog", "cat", "fish"]

//  ---------------------------------------- iteration
var concat: String = ""
for item in mStringArray {
  concat += item
  println(concat)
}
concat


var total = 0
for i in 1...10
{
  total += i
}
total


total = 0
for i in 1..<10
{
  total += i
}
total


// ----------------------------------------- Switch
var test = "cat"
switch test {
case "cat":
  println("meow")
case "dog":
  println("woof")
case let x where x.hasSuffix("at"):
  println(" thing is \(x)")
default:
  println("huh")
}
