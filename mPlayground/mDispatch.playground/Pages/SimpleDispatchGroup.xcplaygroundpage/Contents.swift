//: [Previous](@previous)
//: Dispatch Group

import UIKit
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

let group = DispatchGroup()

print("> Queue 1")
group.enter()
DispatchQueue.global().async {
  print("Job 1 started")
  sleep(2)
  print("Job 1 finished")
  group.leave()
}

print("> Queue 2")
group.enter()
DispatchQueue.global().async {
  print("Job 2 started")
  sleep(4)
  print("Job 2 finished")
  group.leave()
}

group.notify(queue: DispatchQueue.global()) {
  print("All done")
}

print("> Now wait")

//: [Next](@next)
