//: [Previous](@previous)
/*:
 ## Selectors
 */

import UIKit
import PlaygroundSupport

let fontMethodNames = ["debugFont", "designerFont"]

extension UIFont {
  class func debugFont() -> UIFont? {
    return UIFont.init(name: "Courier", size: 12)
  }
  class func designerFont() -> UIFont? {
    return UIFont.init(name: "Chalkduster", size: 12)
  }
}

func fontForIndex(_ index: Int) -> UIFont? {
  let fontMethodName = fontMethodNames[index]
  let sel = Selector(fontMethodName)
  if UIFont.responds(to: sel) {
    return UIFont.perform(sel).takeUnretainedValue() as? UIFont
  }
  return nil
}

let label = UILabel.init(frame: CGRect(x: 0, y: 0, width: 320, height: 88))
label.text = "The quick brown fox jumps over the lazy dog"
label.backgroundColor = UIColor.white
label.numberOfLines = 0
label.font = fontForIndex(0)

PlaygroundPage.current.liveView = label
