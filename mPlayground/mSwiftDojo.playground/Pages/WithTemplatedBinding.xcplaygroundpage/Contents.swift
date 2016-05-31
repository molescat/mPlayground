//: [Previous](@previous)
/*:
 ## SwiftDojo - Basic ViewController, with ViewModel and Template Binding
 */

import UIKit
import XCPlayground


class Binding<T> {
  typealias Listener = (T) -> Void
  var listener: Listener?
  
  var value: T {
    didSet {
      listener?(value)
    }
  }
  
  init(_ value: T)
  {
    self.value = value
  }
  
  func bind(listener: Listener?) {
    self.listener = listener
    listener?(value)
  }
}

//: ---


class ViewModel {
  var counter = Binding(0)
  
  func increment() {
    counter.value += 5
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
    button.backgroundColor = UIColor.cyanColor()
    button.frame = CGRect(x: 10, y: 60, width: 300, height: 44)
    button.setTitle("+", forState: UIControlState.Normal)
    button.addTarget(self,
                     action: #selector(MyViewController.action(_:)),
                     forControlEvents: .TouchUpInside)
    view.addSubview(button)
  
    viewModel.counter.bind { [weak self] in
      self?.textLabel.text = "Counter \($0)"
    }
  }
  
  func action(sender:UIButton!) {
    viewModel.increment()
    print("action, \(viewModel.counter.value)")
  }
}

XCPlaygroundPage.currentPage.liveView = MyViewController()

//: [Next](@next)
