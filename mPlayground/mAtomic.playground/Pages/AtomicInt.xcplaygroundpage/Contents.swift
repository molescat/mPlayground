//: Playground - noun: a place where people can play

import Foundation

public final class AtomicInteger {

  private let lock = DispatchSemaphore(value: 1)
  private var _value: Int

  public init(value initialValue: Int = 0) {
    _value = initialValue
  }

  public var value: Int {
    get {
      // print("  Get")
      lock.wait()
      defer { lock.signal() }
      return _value
    }
    set {
      lock.wait()
      defer { lock.signal() }
      _value = newValue
    }
  }

  public func incrementAndGet() -> Int {
    lock.wait()
    defer { lock.signal() }
    _value += 1
    return _value
  }
}


let atomic = AtomicInteger(value: 0)
print("Start", atomic.value)

func job() {
  DispatchQueue.global().async {
    _ = atomic.incrementAndGet()
  }

  atomic.incrementAndGet()
}

for _ in 0..<10000 {
  job()
}

print("Final", atomic.value)
