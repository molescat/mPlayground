//: [Previous](@previous)
/*:
 ## SwiftDojo - Basic ViewController, with ViewModel
 */

import UIKit
import XCPlayground


class ViewModel {
  var counter = 0
  
  func incrementCounter() {
    counter += 5
  }
  
}

class MyViewController: UIViewController {
  
  var textLabel = UILabel(frame: CGRect(x: 10, y: 10, width: 300, height: 44))
  
  var viewModel = ViewModel()
  
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
    viewModel.incrementCounter()
    
    print("buttonAction, \(viewModel.counter)")
  }
  
}

XCPlaygroundPage.currentPage.liveView = MyViewController()

//: [Next](@next)

