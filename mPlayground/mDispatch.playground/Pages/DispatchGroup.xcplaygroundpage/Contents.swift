//: [Previous](@previous)
//: Dispatch Group

import UIKit
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

let group = DispatchGroup()

var thing = 0

DispatchQueue.global().sync(group: group) {
  print("Job 1 started")
  sleep(2)
  thing += 1
  print("Job 1 finished")
}

DispatchQueue.global().sync(group: group) {
  print("Job 2 started")
  sleep(2)
  thing += 1
  print("Job 2 finished")
}

group.notify(queue: DispatchQueue.global()) {
  print("> All done", thing)
}

print("> Now wait")

//: [Next](@next)
