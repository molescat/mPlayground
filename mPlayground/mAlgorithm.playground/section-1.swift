// Playground - noun: a place where people can play

import UIKit
import XCPlayground

var randomData: [Int] = []
for i in 0..<20 {
  randomData.append(Int(arc4random() % 100))
}
randomData

var data = [84, 74, 56, 54, 18, 26, 69, 91, 35, 48, 45, 15, 19, 70, 63, 32, 79, 31, 79, 41]

func visualize<T>(data: [T], identifier: String) {
  for x in data {
    XCPCaptureValue(identifier, x)
  }
}

func exchange<T>(inout data: [T], i: Int, j: Int) {
  let temp = data[i]
  data[i] = data[j]
  data[j] = temp
}

func swapLeft<T: Comparable>(inout data: [T], index: Int) {
  for i in reverse(1...index) {
    if data[i] < data[i - 1] {
      exchange(&data, i, i - 1)
    } else {
      break
    }
  }
}

func isort<T: Comparable>(inout data: [T]) {
  for i in 1...(data.count - 1) {
    swapLeft(&data, i)
  }
}

visualize(data, "start")


isort(&data)

visualize(data, "end")
