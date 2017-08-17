/*:
## Unit Test - Avoiding stubbing and mocking
*/

import Foundation

protocol TabBarToggle {
  static func shouldShowTabBar() -> Bool
}

class REAToggle {
  //: ... other code goes here
}

//: ---

extension REAToggle: TabBarToggle {
  static func shouldShowTabBar() -> Bool {
    return true
  }
}

//: ---

class FakeToggleToHideTabBar: TabBarToggle {
  static func shouldShowTabBar() -> Bool {
    return false
  }
}
