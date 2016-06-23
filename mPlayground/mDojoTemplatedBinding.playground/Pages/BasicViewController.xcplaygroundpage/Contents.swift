//: [Previous](@previous)
/*:
 ## SwiftDojo - Basic ViewController
 */

import UIKit
import PlaygroundSupport

class Binding<T> {
  typealias Listener = (T) -> Void
  var listener: Listener?
  
  var value: T {
    didSet {
      listener?(value)
    }
  }
  
  init(_ value: T) {
    self.value = value
  }
  
  func bind(listener: Listener?) {
    self.listener = listener
    listener?(value)
  }
}

class ViewModel {
  var counter = Binding(0)
  
  func increment() {
    counter.value += 5
  }
  
  var displayText: String {
    return "Counter \(counter.value)"
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
    
    viewModel.counter.bind { [weak self] _ in
      self?.textLabel.text = self?.viewModel.displayText
    }
  }
  
  func action(sender: UIButton!) {
    viewModel.increment()
    print("action \(viewModel.counter.value)")
  }
}

PlaygroundPage.current.liveView = MyViewController()

//: [Next](@next)
