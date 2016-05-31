//: [Previous](@previous)
/*:
 ## SwiftDojo - Basic ViewController
 */

import UIKit
import XCPlayground

class MyViewController: UIViewController {
  
  var textLabel = UILabel(frame: CGRect(x: 10, y: 10, width: 300, height: 44))
  
  override func viewDidLoad() {
    view.backgroundColor = UIColor.whiteColor()
    
    textLabel.backgroundColor = UIColor.lightGrayColor()
    textLabel.text = "Value"
    view.addSubview(textLabel)
    
    let button = UIButton(type: UIButtonType.System)
    button.backgroundColor = UIColor.cyanColor()
    button.frame = CGRect(x: 10, y: 60, width: 300, height: 44)
    button.setTitle("Update", forState: UIControlState.Normal)
    button.addTarget(self,
                     action: #selector(MyViewController.action(_:)),
                     forControlEvents: .TouchUpInside)
    view.addSubview(button)
  }
  
  func action(sender: UIButton!) {
    print("action")
  }
  
}

XCPlaygroundPage.currentPage.liveView = MyViewController()

//: [Next](@next)
