//: [Previous](@previous)

/*:
 ## JSON Serialization
 */
import Foundation

let filePath = Bundle.main.path(forResource: "basic", ofType: "json")

let contentData = FileManager.default.contents(atPath: filePath!)

let content = NSString(data: contentData!, encoding: String.Encoding.utf8.rawValue) as? String

let json = try? JSONSerialization.jsonObject(with: contentData!, options: [])

func model(with json: Any) {
  if let dictionary = json as? [String: Any] {
    guard let someKeyValue = dictionary["someKey"] else { return }
    print("someKeyValue \(someKeyValue)")

    guard let anotherKeyValue = dictionary["anotherKey"] else { return }
    print("anotherKeyValue \(anotherKeyValue)")
  }
}

model(with: json)

//: [Next](@next)
