//: Functions - defaults and optionals

import UIKit
import Foundation

var str = "Hello, playground"


func sayHelloTo(name: String) {
  print("Hello \(name)")
}

sayHelloTo("moles")

func sayGreeting(greeting: String? = nil, _ name: String = "friend") {
  let theGreeting = greeting ?? "Hello"
  print("\(theGreeting) \(name)")
}

sayGreeting()


//let greeter = sayGreeting
//greeter("Hello", "moles")


func addDouble(doubles: Double...) -> Double {
  return doubles.reduce(0.0, combine: +)
}

let x = addDouble(1.2, 2.3, 4.5)


