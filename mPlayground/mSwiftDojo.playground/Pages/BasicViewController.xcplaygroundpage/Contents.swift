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
    view.addSubview(textLabel)
    
    let button = UIButton(type: UIButtonType.System)
    button.frame = CGRect(x: 10, y: 60, width: 300, height: 44)
    button.setTitle("Update", forState: UIControlState.Normal)
    button.backgroundColor = UIColor.cyanColor()
    button.addTarget(self, action: #selector(MyViewController.buttonAction(_:)), forControlEvents: UIControlEvents.TouchUpInside)
    view.addSubview(button)
  }
  
  func buttonAction(sender:UIButton!) {
    print("buttonAction")
  }
  
}

XCPlaygroundPage.currentPage.liveView = MyViewController()

//: [Next](@next)
