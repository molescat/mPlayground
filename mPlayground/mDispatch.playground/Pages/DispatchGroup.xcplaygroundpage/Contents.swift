//: [Previous](@previous)
//: Dispatch Group

import UIKit
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

let group = DispatchGroup()

DispatchQueue.global().async(group: group) {
  print("Job 1 started")
  sleep(2)
  print("Job 1 finished")
}

DispatchQueue.global().async(group: group) {
  print("Job 2 started")
  sleep(2)
  print("Job 2 finished")
}

group.notify(queue: DispatchQueue.global()) {
  print("> All done")
}

print("> Now wait")

//: [Next](@next)
