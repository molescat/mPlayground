// Playground - Control Flow

import UIKit


//  ---------------------------------------- if
var temperatureInFahrenheit = 30
if temperatureInFahrenheit <= 32 {
  print("It's freezing")
} else if temperatureInFahrenheit > 86 {
  print("It's damn hot")
} else {
  print("It's meh")
}

//  ---------------------------------------- guard
func greet(person: [String: String]) {
  guard let name = person["name"] else {
    return
  }
  
  print("Hello \(name)")
  
  guard let location = person["location"] else {
    print("Where are you")
    return
  }
  
  print("I hope the weather is nice in \(location)")
}

greet(["name":"Bill"])
//greet(["name":"Steve", "location":"Cupertino"])
