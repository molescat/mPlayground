//: [Previous](@previous)
/*:
 ## SwiftDojo - Basic ViewController, with ViewModel and Template Binding
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
    view.backgroundColor = UIColor.lightGray
    
    textLabel.backgroundColor = UIColor.white
    view.addSubview(textLabel)
    
    let button = UIButton(type: .system)
    button.backgroundColor = UIColor.cyan
    button.frame = CGRect(x: 10, y: 60, width: 300, height: 44)
    button.setTitle("+", for: .normal)
    button.addTarget(self,
                     action: #selector(action(sender:)),
                     for: .touchUpInside)
    view.addSubview(button)
  
    viewModel.counter.bind { [weak self] in
      self?.textLabel.text = "Counter \($0)"
    }
  }
  
  func action(sender:UIButton!) {
    viewModel.increment()
    print("action: \(viewModel.counter.value)")
  }
}

PlaygroundPage.current.liveView = MyViewController()

//: [Next](@next)
