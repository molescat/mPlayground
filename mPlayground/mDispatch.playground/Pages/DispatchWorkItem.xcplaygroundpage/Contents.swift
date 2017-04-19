//: [Previous](@previous)
//: Dispatch Group

import UIKit
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

func status(_ work: DispatchWorkItem) -> String {
  return (work.isCancelled) ? "Cancelled" : "Completed"
}

let queue = DispatchQueue(label: "com.mplayground.dispatchgroup", attributes: .concurrent, target: .main)

let work1 = DispatchWorkItem(qos: .utility, flags: .detached) {
  print("Work1 started")
  sleep(2)
  print(" Work1 finished")
}

work1.notify(queue: .main) { [unowned work1] in
  print("> work1 \(status(work1))")
}

let work2 = DispatchWorkItem(qos: .utility, flags: .detached) {
  print("Work2 started")
  sleep(2)
  print(" Work2 finished")
}

work2.notify(queue: .main) { [unowned work2] in
  print("> work2 \(status(work2))")
}

queue.async(execute: work1)
queue.async(execute: work2)

work1.cancel()

//: [Next](@next)
