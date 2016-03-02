//: [Previous](@previous)

import Foundation

var response = (200, "Good")


var status: (Int, Float, String) = (32, 1.2, "Good")


var namedStatus: (code: Int, value: Float, name: String?) = (21, 1.2, nil)
namedStatus.code



var playerScore: (score: Int, firstName: String, lastName: String) = (23, "Steve", "Jobs")

//: Decomposed the tupple
let (x, y, z) = playerScore
x
y
z

//: Modify the tupple
playerScore.firstName = "Bill"
playerScore.lastName = "Gates"
playerScore
