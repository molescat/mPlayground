//: [Previous](@previous)
/*:
## Classes -  Lazy
*/
import Foundation

class DataImporter {
  /*
  The class is assumed to take a non-trivial amount of time to initialize.
  */
  var fileName = "data.txt"
  // ...
}

class DataManager {
  lazy var importer = DataImporter()
  var data = [String]()
  // ...
}

let manager = DataManager()
manager.data.append("Some data")
manager.data.append("Some more data")
// the DataImporter instance for the importer property has not yet been created


//: [Next](@next)
