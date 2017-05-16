//: [Previous](@previous)

import Foundation

final class Atomic<A> {
  private var queue = DispatchQueue(label: "serial queue")
  private var _value: A

  init(_ value: A) {
    self._value = value
  }

  var value: A {
    return queue.sync { self._value }
  }

  func mutate(_ transform: (inout A) -> Void) {
    queue.sync {
      transform(&self._value)
    }
  }
}


var atomic = Atomic(0)
print("Start", atomic.value)

func job() {
  DispatchQueue.global().async {
    atomic.mutate { $0 += 1 }
  }

  atomic.mutate { $0 += 1 }
}

for _ in 0..<10000 {
  job()
}

print("Final", atomic.value)
//: [Next](@next)
