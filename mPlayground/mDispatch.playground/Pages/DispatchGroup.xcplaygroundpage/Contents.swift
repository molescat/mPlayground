//: [Previous](@previous)
//: Dispatch Group

import UIKit
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

let queue = DispatchQueue(label: "com.mplayground.dispatchgroup", attributes: .concurrent, target: .main)
let group = DispatchGroup()

queue.async(group: group) {
  print("Job 1 started")
  sleep(2)
  print("Job 1 finished")
}

queue.async(group: group) {
  print("Job 2 started")
  sleep(4)
  print("Job 2 finished")
}

group.notify(queue: queue) {
  print("All done")
}

//: [Next](@next)