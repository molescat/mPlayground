//: [Previous](@previous)
/*:
 ## Selectors
 */

import UIKit
import XCPlayground

let fontMethodNames = ["debugFont", "designerFont"]

extension UIFont {
  class func debugFont() -> UIFont? {
    return UIFont.init(name: "Courier", size: 18)
  }
  class func designerFont() -> UIFont? {
    return UIFont.init(name: "Chalkduster", size: 18)
  }
}

func fontForIndex(index: Int) -> UIFont? {
  let fontMethodName = fontMethodNames[index]
  let sel = Selector(fontMethodName)
  if UIFont.respondsToSelector(sel) {
    return UIFont.performSelector(sel).takeUnretainedValue() as? UIFont
  }
  return nil
}

let label = UILabel.init(frame: CGRect(x: 0, y: 0, width: 320, height: 88))
label.text = "The quick brown fox jumps over the lazy dog"
label.backgroundColor = UIColor.whiteColor()
label.numberOfLines = 0
label.font = fontForIndex(0)

XCPlaygroundPage.currentPage.liveView = label
