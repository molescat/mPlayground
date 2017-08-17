//: [Previous](@previous)

import UIKit
import Foundation
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

URLCache.shared = URLCache(memoryCapacity: 0, diskCapacity: 0, diskPath: nil)

func completeExecution() {
  PlaygroundPage.current.finishExecution()
}

class MyService {

  func fetch(completion: (() -> Void)?) {
    print("fetch")

    let url = URL(string: "http://i.imgur.com/aWkpX3W.png")
    let task = URLSession.shared.dataTask(with: url!) { (data, response, error) in
      if (error == nil) {
        print("response")
        var image = UIImage(data: data!)

        completion?()
      } else {
        print("error")
      }
      // completeExecution()
    }

    task.resume()
  }

  deinit {
    print(" deinit MyService")
  }
}

class MyVC {
  let service = MyService()

  func work() {
    print("* work")
  }

  func perform() {
    print("perform")
    service.fetch(completion: { // [weak self] in
      print(" fetch completion")
      self.work()
    })
  }

  deinit {
    print(" deinit MyVC")
  }
}

var x: MyVC? = MyVC()
x?.perform()
x = nil
print("release MyVC")

//: [Next](@next)
