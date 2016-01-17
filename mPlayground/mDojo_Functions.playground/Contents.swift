//: Functions - defaults and optionals

import UIKit
import Foundation


func sayHelloTo(name: String, _ message: String = "welcome") {
  print("Hello \(name) \(message)")
}

sayHelloTo("moles", "thing")

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

let x = addDouble(1.2, 2.3, 4.5, 5.6)

class TestA {
  func foo(name: String) {
    print("\(name)")
  }
  func foo() {
    print("empty")
  }
}

let z = TestA()
z.foo("test")
