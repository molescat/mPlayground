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
      print("  Get")
      lock.wait()
      defer {
        print("  GOT")
        lock.signal()
      }
      return _value
    }
    set {
      lock.wait()
      defer { lock.signal() }
      _value = newValue
    }
  }

  public func incrementAndGet() -> Int {
//    print("  incrementAndGet")
    lock.wait()
    defer {
      lock.signal()
///      print("  incremented")
    }
    _value += 1
    return _value
  }
}

print("Start")

let atomic = AtomicInteger(value: 0)
print(atomic.value)

func job() {
  DispatchQueue.global().async {
//    print(" Dog")
    print(atomic.incrementAndGet())
  }

//  DispatchQueue.global().async {
////    print(" Cat")
//    print(atomic.incrementAndGet())
//  }
}

(0..<40).forEach { i in
//  print(">", i)
  job()
}
