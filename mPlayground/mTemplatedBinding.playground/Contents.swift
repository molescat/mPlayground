//: [Previous](@previous)
/*:
 ## Templated Binding Object
 */

import UIKit
import PlaygroundSupport

class MyViewController: UIViewController {
  
  var textLabel = UILabel(frame: CGRect(x: 10, y: 10, width: 300, height: 44))
  
  override func viewDidLoad() {
    view.backgroundColor = UIColor.lightGray()
    
    textLabel.backgroundColor = UIColor.white()
    view.addSubview(textLabel)

    let button = UIButton(type: UIButtonType.system)
    button.frame = CGRect(x: 10, y: 60, width: 300, height: 44)
    button.setTitle("+", for: [])
    button.backgroundColor = UIColor.cyan()
    button.addTarget(self, action: #selector(action(_:)), for: .touchUpInside)
    view.addSubview(button)
  }
  
  func action(_ sender:UIButton!) {
    print("action:")
  }
}

PlaygroundPage.current.liveView = MyViewController()
