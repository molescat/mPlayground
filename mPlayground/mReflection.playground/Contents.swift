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

let aBookmark = Bookmark(title: "Appventure",
  url: NSURL(string: "appventure.me")!,
  keywords: ["Swift", "iOS", "OSX"], group: .Tech)

//: ---
let aMirror = Mirror(reflecting: aBookmark)
for case let (label?, value) in aMirror.children {
  print(label, value)
}


print("=== Subject Type")
aMirror.subjectType
print(aMirror.subjectType)
print(Mirror(reflecting: 5).subjectType)
print(Mirror(reflecting: "test").subjectType)
print(Mirror(reflecting: NSNull()).subjectType)


print("=== Display Style")
// Known
aMirror.displayStyle
print(aMirror.displayStyle)
// Unknown
let closure = { (a: Int) -> Int in return a * 2 }
Mirror(reflecting: closure).displayStyle


print("=== superclass")
print(Mirror(reflecting: aBookmark).superclassMirror())
print(Mirror(reflecting: aBookmark.store).superclassMirror())


if aMirror.displayStyle == .Struct { print("Matched") }

print("=== Function")
func testFunction() -> Int {
  return 7
}

print(Mirror(reflecting: testFunction).description)


