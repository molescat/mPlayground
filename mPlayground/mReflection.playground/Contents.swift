/*:  http://appventure.me/2015/10/24/swift-reflection-api-what-you-can-do/
# The Swift Reflection API and what you can do with it
*/
import Foundation

public class Store {
  let storesToDisk: Bool = true
}
public class BookmarkStore: Store {
  let itemCount: Int = 10
}
public struct Bookmark {
  enum Group {
    case Tech
    case News
  }
  private let store = {
    return BookmarkStore()
  }()
  let title: String?
  let url: NSURL
  let keywords: [String]
  let group: Group
}

let aBookmark = Bookmark(title: "Appventure", url: NSURL(string: "appventure.me")!, keywords: ["Swift", "iOS", "OSX"], group: .Tech)


let aMirror = Mirror(reflecting: aBookmark)

for case let (label?, value) in aMirror.children {
  print(label, value)
}

print(aMirror.subjectType)
//prints : Bookmark
print(Mirror(reflecting: 5).subjectType)
//prints : Int
print(Mirror(reflecting: "test").subjectType)
//prints : String
print(Mirror(reflecting: NSNull()).subjectType)
//print : NSNull
