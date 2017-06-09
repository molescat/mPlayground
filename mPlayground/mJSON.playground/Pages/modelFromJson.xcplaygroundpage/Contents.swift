/*:
 ## JSON Serialization
 */
import Foundation

struct Restaurant {
  enum Meal: String {
    case breakfast, lunch, dinner
  }
  
  let name: String
  let location: (latitude: Double, longitude: Double)
  let meals: Set<Meal>
}

extension Restaurant {
  init?(json: [String: Any]) {
    guard let name = json["name"] as? String,
      let coordinatesJSON = json["coordinates"] as? [String: Double],
      let latitude = coordinatesJSON["lat"],
      let longitude = coordinatesJSON["lng"],
      let mealsJSON = json["meals"] as? [String]
      else { return nil }
    
    var meals: Set<Meal> = []
    
    for string in mealsJSON {
      guard let meal = Meal(rawValue: string) else { return nil }
      
      meals.insert(meal)
    }
    
    self.name = name
    self.location = (latitude, longitude)
    self.meals = meals
  }
}

//: 

let filePath = Bundle.main.path(forResource: "restaurant", ofType: "json")
let contentData = FileManager.default.contents(atPath: filePath!)
let content = NSString(data: contentData!, encoding: String.Encoding.utf8.rawValue) as? String
let json = try? JSONSerialization.jsonObject(with: contentData!, options: [])
let dictionary = json as? [String: Any]

let cafe = Restaurant(json: dictionary!)
cafe?.name
