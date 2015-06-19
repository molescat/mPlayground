// Playground - sorting and graphing the results

import UIKit

// Use this to help make the random numbers for 'data'
var randomData: [Int] = []
for i in 0..<20 {
  randomData.append(Int(arc4random() % 100))
}
randomData

// ------------------------------------------------
var data = [84, 74, 56, 54, 18, 26, 69, 91, 35, 48, 45, 15, 19, 70, 63, 32, 79, 31, 79, 41]

func exchange<T>(inout data: [T], i: Int, j: Int) {
  let temp = data[i]
  data[i] = data[j]
  data[j] = temp
}

func swapLeft<T: Comparable>(inout data: [T], index: Int) {
  for i in Array((1...index).reverse()) {
    if data[i] < data[i - 1] {
      exchange(&data, i: i, j: i - 1)
    } else {
      break
    }
  }
}

func isort<T: Comparable>(inout data: [T]) {
  for i in 1...(data.count - 1) {
    swapLeft(&data, index: i)
  }
}

for item in data {
  item
}

isort(&data)

for item in data {
    item
}
