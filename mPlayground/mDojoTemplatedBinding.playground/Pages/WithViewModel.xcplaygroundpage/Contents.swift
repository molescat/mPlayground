//: [Previous](@previous)
/*:
 ## SwiftDojo - Basic ViewController, with ViewModel
 */

import UIKit
import PlaygroundSupport


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
    view.backgroundColor = UIColor.lightGray
    
    textLabel.backgroundColor = UIColor.white
    textLabel.text = "Value"
    view.addSubview(textLabel)
    
    let button = UIButton(type: .system)
    button.backgroundColor = UIColor.cyan
    button.frame = CGRect(x: 10, y: 60, width: 300, height: 44)
    button.setTitle("+", for: .normal)
    button.addTarget(self,
                     action: #selector(action(sender:)),
                     for: .touchUpInside)
    view.addSubview(button)
  }
  
  func action(sender:UIButton!) {
    viewModel.increment()
    print("action: \(viewModel.counter)")
  }
}

PlaygroundPage.current.liveView = MyViewController()

//: [Next](@next)

