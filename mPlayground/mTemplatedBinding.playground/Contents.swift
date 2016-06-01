//: [Previous](@previous)
/*:
 ## Templated Binding Object
 */

import UIKit
import XCPlayground

class MyViewController: UIViewController {
  
  var textLabel = UILabel(frame: CGRect(x: 10, y: 10, width: 300, height: 44))
  
  override func viewDidLoad() {
    view.backgroundColor = UIColor.lightGrayColor()
    
    textLabel.backgroundColor = UIColor.whiteColor()
    view.addSubview(textLabel)

    let button = UIButton(type: UIButtonType.System)
    button.frame = CGRect(x: 10, y: 60, width: 300, height: 44)
    button.setTitle("+", forState: UIControlState.Normal)
    button.backgroundColor = UIColor.cyanColor()
    button.addTarget(self, action: #selector(action(_:)), forControlEvents: UIControlEvents.TouchUpInside)
    view.addSubview(button)
  }
  
  func action(sender:UIButton!) {
    print("action:")
  }
}

XCPlaygroundPage.currentPage.liveView = MyViewController()
