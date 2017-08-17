//: [Previous](@previous)

import Foundation
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

let lock = DispatchSemaphore(value: 0)

DispatchQueue.global().async {
  print("Job started")
  sleep(4)
  print("Job finished")
  lock.signal()
}

print("About to wait")
lock.wait()
print("Waited")

//: [Next](@next)
