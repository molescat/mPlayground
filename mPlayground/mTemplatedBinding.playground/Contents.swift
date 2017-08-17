//: [Previous](@previous)
/*:
 ## Templated Binding Object
 */

import UIKit
import PlaygroundSupport

class MyViewController: UIViewController {

  var textLabel = UILabel(frame: CGRect(x: 10, y: 10, width: 100, height: 44))

  override func viewDidLoad() {
    view.backgroundColor = UIColor.lightGray

    textLabel.backgroundColor = UIColor.white
    textLabel.text = "Hello"
    textLabel.textColor = UIColor.cyan
    view.addSubview(textLabel)

    let button = UIButton(type: UIButtonType.system)
    button.frame = CGRect(x: 10, y: 60, width: 100, height: 44)
    button.setTitle("+", for: [])
    button.backgroundColor = UIColor.cyan
    button.addTarget(self,
                     action: #selector(myAction(_:)),
                     for: .touchUpInside)
    view.addSubview(button)
  }

  @objc func myAction(_ sender: UIButton) {
    print("action:")
  }
}

PlaygroundPage.current.needsIndefiniteExecution = true
PlaygroundPage.current.liveView = MyViewController()
