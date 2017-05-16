//: [Previous](@previous)

import Foundation



//: -------------------- Functions

struct MyPoint {
  var x = 0.0, y = 0.0
  mutating func mutatingMoveByX(x deltaX: Double, y deltaY: Double) {
    x += deltaX
    y += deltaY
  }
  func moveByX(_ deltaX: Double, y deltaY: Double) -> MyPoint {
    return MyPoint(x: x + deltaX, y: y + deltaY)
  }
}
var somePoint = MyPoint(x: 1.0, y: 1.0)
somePoint.mutatingMoveByX(x: 2.0, y: 3.0)

var anotherPoint = somePoint.moveByX(3.0, y: 4.0)


//: -------------------- Initializers
//: Note - there is no func on a init declaration

struct Celsius {
  var temperatureInCelsius: Double
  init(fromFahrenheit fahrenheit: Double) {
    temperatureInCelsius = (fahrenheit - 32.0) / 1.8
  }
  init(fromKelvin kelvin: Double) {
    temperatureInCelsius = kelvin - 273.15
  }
  init(_ celsius: Double) {
    temperatureInCelsius = celsius
  }
}
let boilingPointOfWater = Celsius(fromFahrenheit: 212.0)
let freezingPointOfWater = Celsius(fromKelvin: 273.15)
let bodyTemperature = Celsius(37.0)



//: [Next](@next)
