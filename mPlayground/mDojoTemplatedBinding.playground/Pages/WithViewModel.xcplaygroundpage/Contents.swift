//: [Previous](@previous)
/*:
 ## SwiftDojo - Basic ViewController, with ViewModel
 */

import UIKit
import XCPlayground


class ViewModel {
  var counter = 0
  
  func increment() {
    counter += 5
  }
}

class MyViewController: UIViewController {
  
  var textLabel = UILabel(frame: CGRect(x: 10, y: 10, width: 300, height: 44))
  
  var viewModel = ViewModel()
  
  override func viewDidLoad() {
    view.backgroundColor = UIColor.lightGrayColor()
    
    textLabel.backgroundColor = UIColor.whiteColor()
    textLabel.text = "Value"
    view.addSubview(textLabel)
    
    let button = UIButton(type: UIButtonType.System)
    button.backgroundColor = UIColor.cyanColor()
    button.frame = CGRect(x: 10, y: 60, width: 300, height: 44)
    button.setTitle("+", forState: UIControlState.Normal)
    button.addTarget(self,
                     action: #selector(action(_:)),
                     forControlEvents: .TouchUpInside)
    view.addSubview(button)
  }
  
  func action(sender:UIButton!) {
    viewModel.increment()
    print("action: \(viewModel.counter)")
  }
}

XCPlaygroundPage.currentPage.liveView = MyViewController()

//: [Next](@next)

