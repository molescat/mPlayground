//: [Previous](@previous)

import Foundation
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

final class Signal {
  typealias Callback = () -> Void

  private let queue = DispatchQueue(label: "mPlayground")

  var callback: Callback? = nil

  func send() {
    let cb = queue.sync { self.callback }
  }
}

let signal = Signal()
signal.callback = { print("Hello") }

//: [Next](@next)
