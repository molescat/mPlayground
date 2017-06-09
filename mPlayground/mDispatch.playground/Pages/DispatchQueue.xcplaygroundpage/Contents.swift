//: [Previous](@previous)

import Foundation
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

final class Signal {
  typealias Callback = () -> Void

  private let queue = DispatchQueue(label: "mPlayground-DispatchQueue")

  var callback: Callback? = nil

  func send() {
    queue.sync { self.callback?() }
  }
}

let signal = Signal()
signal.callback = { print("Hello") }
signal.send()

//: [Next](@next)
