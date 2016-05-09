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
  var userName: Binding<String?> = Binding("placeholder")
}

class MyViewController: UIViewController, UITextFieldDelegate {
  
  var viewModel = ViewModel()
  
  var textField: UITextField = UITextField(frame: CGRect(x: 10, y: 10, width: 300, height: 44))
  
  override func viewDidLoad() {
    view.backgroundColor = UIColor.grayColor()
    view.addSubview(textField)
    
    textField.backgroundColor = UIColor.whiteColor()
    textField.delegate = self
    
    viewModel.userName.bind { [weak self] in
      self?.textField.text = $0
    }
  }
  
  func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
    viewModel.userName.value = textField.text
    return true
  }
}


XCPlaygroundPage.currentPage.liveView = MyViewController()
