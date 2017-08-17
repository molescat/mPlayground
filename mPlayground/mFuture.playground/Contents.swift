import UIKit
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

enum Result<A> {
  case success(A)
  case error(Error)

  init(_ value: A?, or error: Error) {
    if let value = value {
      self = .success(value)
    } else {
      self = .error(error)
    }
  }
}

final class KeyValueObserver<A>: NSObject {
  let block: (A) -> Void
  let keyPath: String
  var object: NSObject
  init(object: NSObject, keyPath: String, _ block: @escaping (A) -> Void) {
    self.block = block
    self.keyPath = keyPath
    self.object = object
    super.init()
    object.addObserver(self, forKeyPath: keyPath, options: .new, context: nil)
  }

  deinit {
    object.removeObserver(self, forKeyPath: keyPath)
  }

  override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
    block(change![.newKey] as! A)
  }
}

extension Result {
  func map<B>(_ transform: (A) -> B) -> Result<B> {
    switch self {
    case .success(let value): return .success(transform(value))
    case .error(let error): return .error(error)
    }
  }
}

extension String: Error { }

final class Signal<A> {
  var callbacks: [(Result<A>) -> Void] = []
  var objects: [Any] = []

  static func pipe() -> ((Result<A>) -> Void, Signal<A>) {
    let signal = Signal<A>()
    return ({ [weak signal] value in signal?.send(value) }, signal)
  }

  private func send(_ value: Result<A>) {
    for callback in callbacks {
      callback(value)
    }
  }

  func subscribe(callback: @escaping (Result<A>) -> Void) {
    callbacks.append(callback)
  }

  deinit {
    print("deiniting signal")
  }
}

extension UITextField {
  func signal() -> Signal<String> {
    let (sink, result) = Signal<String>.pipe()
    let observer = KeyValueObserver(object: self,
                                    keyPath: #keyPath(text)) { str in
      sink(.success(str))
    }
    result.objects.append(observer)
    return result
  }
}

class VC: UIViewController {
  let textField = UITextField(frame: CGRect(x: 0, y: 0,
                                            width: 100, height: 44))
  var stringSignal: Signal<String>?

  override func viewDidLoad() {
    print("viewDidLoad")
    super.viewDidLoad()
    view.backgroundColor = UIColor.darkGray
    view.addSubview(textField)

    stringSignal = textField.signal()
    stringSignal?.subscribe {
      print($0)
    }
  }
}

var vc: VC? = VC()
//vc?.viewDidLoad()
PlaygroundPage.current.liveView = vc

print("Assign")
vc?.textField.text = "18"

//vc = nil
//PlaygroundPage.current.liveView = nil
