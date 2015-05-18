//: Playground - structs

import UIKit

struct Point {
  var x = 0.0, y = 0.0
}
struct Size {
  var width = 0.0, height = 0.0
}

// --------------------- setter/getter
struct Rect {
  var origin = Point()
  var size = Size()
  var center: Point {
    get {
      let centerX = origin.x + (size.width / 2)
      let centerY = origin.y + (size.height / 2)
      return Point(x: centerX, y: centerY)
    }
    set(newCenter) {
      origin.x = newCenter.x - (size.width / 2)
      origin.y = newCenter.y - (size.height / 2)
    }
  }
}

var zeroPoint = Point();  // using defaults
var square = Rect(origin: zeroPoint,
  size: Size(width: 10.0, height: 10.0))
let initialSquareCenter = square.center
square.center = Point(x: 15.0, y: 15.0)  // Custom getter/setter
println("square.origin is now at (\(square.origin.x), \(square.origin.y))")

// -- Alternate version
struct ShorthandRect {
  var origin = Point()
  var size = Size()
  var center: Point {
    get {
      let centerX = origin.x + (size.width / 2)
      let centerY = origin.y + (size.height / 2)
      return Point(x: centerX, y: centerY)
    }
    set {  // Where we use the default name 'newValue'
      origin.x = newValue.x - (size.width / 2)
      origin.y = newValue.y - (size.height / 2)
    }
  }
}


// ----------------- Read Only - eg volume
struct Cuboid {
  var width = 0.0, height = 0.0, depth = 0.0
  var volume: Double {
    return width * height * depth
  }
}
let fourByFiveByTwo = Cuboid(width: 4.0, height: 5.0, depth: 2.0)
fourByFiveByTwo.volume


// ------------------ Property Observer
class StepCounter {
  var totalSteps: Int = 0 {
    willSet(newTotalSteps) {
      println("About to set totalSteps to \(newTotalSteps)")
    }
    didSet {
      if totalSteps > oldValue  {
        println("Added \(totalSteps - oldValue) steps")
      }
    }
  }
}
let stepCounter = StepCounter()
stepCounter.totalSteps = 200
// About to set totalSteps to 200
// Added 200 steps

/* - NOTE: Output of print/println functions goes to console - you can see it in assistant editor (use app menu View -> Assistant editor -> Show assistant editor to show it

  To see the above output of the willSet, didSet - check the console
*/


// -------------------- Type Properties
struct SomeStructure {
  static var storedTypeProperty = "Some value."
  static var computedTypeProperty: Int {
    return 23
  }
  static func someTypeMethod() {
    println("Hello some Type Method")
  }
}
SomeStructure.storedTypeProperty
SomeStructure.someTypeMethod()


// -------------------- Functions
struct MyPoint {
  var x = 0.0, y = 0.0
  mutating func mutatingMoveByX(deltaX: Double, y deltaY: Double) {
    x += deltaX
    y += deltaY
  }
  func moveByX(deltaX: Double, y deltaY: Double) -> MyPoint {
    return MyPoint(x: x + deltaX, y: y + deltaY)
  }
}
var somePoint = MyPoint(x: 1.0, y: 1.0)
somePoint.mutatingMoveByX(2.0, y: 3.0)

var anotherPoint = somePoint.moveByX(3.0, y: 4.0)


// -------------------- Initializers
// Note - there is no func on a init declaration
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


// --------------------- constant & deferred initialiation
class SurveyQuestion {
  let text: String
  var response: String?
  init(text: String) {
    self.text = text
  }
  func ask() {
    println(text)
  }
}
let beetsQuestion = SurveyQuestion(text: "How about beets?")
beetsQuestion.ask()
beetsQuestion.response = "I also like beets. (But not with cheese.)"


// --------------------- initialization options / delegation
struct MyRect {
  var origin = Point()
  var size = Size()
  init() {}
  init(origin: Point, size: Size) {
    self.origin = origin
    self.size = size
  }
  init(center: Point, size: Size) {
    let originX = center.x - (size.width / 2)
    let originY = center.y - (size.height / 2)
    self.init(origin: Point(x: originX, y: originY), size: size)
  }
}
