//: Set

import Cocoa

struct Option: OptionSetType {
  
  let rawValue: Int
  
  init(rawValue: Int) {
    self.rawValue = rawValue
  }
  
  static let A = Option(rawValue: 1 << 0)
  static let B = Option(rawValue: 1 << 1)
  static let C = Option(rawValue: 1 << 2)
  
  static let AAndC = [A, C]
  static let All = [A, B, C]
  
}

let allOptions: Option = [.A, .B, .C]
print(allOptions)


let all = Option.All

for option in all {
  print(option)
}

//----
var letters = Set<Character>()
print("letters is of type Set<Character> with \(letters.count) items.")

letters.insert("a")
letters.insert("b")
letters.count

letters = []
// letters is now an empty set, but is still of type Set<Character>

var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip hop"]
var favoriteGenresShort: Set = ["Rock", "Classical", "Hip hop"]

favoriteGenres.insert("Jazz")
