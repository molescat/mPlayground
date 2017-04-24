//: [Previous](@previous)
//: Dispatch Group

import UIKit
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

func status(_ work: DispatchWorkItem) -> String {
  return (work.isCancelled) ? "Cancelled" : "Completed"
}

let work1 = DispatchWorkItem() {
  print("Work1 started")
  sleep(3)
  print(" Work1 finished")
}

work1.notify(queue: DispatchQueue.global()) { [unowned work1] in
  print("> work1 \(status(work1))")
}

let work2 = DispatchWorkItem() {
  print("Work2 started")
  sleep(3)
  print(" Work2 finished")
}

work2.notify(queue: DispatchQueue.global()) { [unowned work2] in
  print("> work2 \(status(work2))")
}

DispatchQueue.global().async(execute: work1)
DispatchQueue.global().async(execute: work2)

//sleep(1)

work1.cancel()

print(" Now wait")

//: [Next](@next)
