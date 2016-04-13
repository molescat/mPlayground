//: [Previous](@previous)
/*:
 ## Localization
 */

import Foundation

var name = "Steve"
var age = 42

var text = String.localizedStringWithFormat(
  NSLocalizedString("My name is %@. I am %d years old.",
    comment: "Greeting"), name, age)

text

//: [Next](@next)
