//: [Previous](@previous)
/*:
 ## Templated Binding Object
 */

import UIKit
import XCPlayground


class Binding<T> {
  typealias Listener = T -> Void
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

class ViewModel {
  var counter: Binding<Int> = Binding(0)
  func incrementCounter() {
    counter.value += 5
  }
}

class MyViewController: UIViewController {
  
  var viewModel = ViewModel()
  
  var textLabel = UILabel(frame: CGRect(x: 10, y: 10, width: 300, height: 44))
  var button = UIButton(type: UIButtonType.System)
  
  override func viewDidLoad() {
    view.backgroundColor = UIColor.whiteColor()
    
    textLabel.backgroundColor = UIColor.whiteColor()
    view.addSubview(textLabel)

    button.frame = CGRect(x: 10, y: 60, width: 300, height: 44)
    button.setTitle("Update", forState: UIControlState.Normal)
    button.backgroundColor = UIColor.cyanColor()
    button.addTarget(self, action: #selector(MyViewController.buttonAction(_:)), forControlEvents: UIControlEvents.TouchUpInside)
    view.addSubview(button)
    
    viewModel.counter.bind { [weak self] in
      self?.textLabel.text = "Counter \($0)"
    }
  }
  
  func buttonAction(sender:UIButton!) {
    viewModel.incrementCounter()
  }
  
}

XCPlaygroundPage.currentPage.liveView = MyViewController()
