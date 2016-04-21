//: [Previous](@previous)
/*:
 ## Array - iteration
 */

import UIKit

var theViews: [UIView]
theViews = (0..<10).map { ord in
  UIView(frame: CGRect(x: ord, y: 0, width: 0, height: 0))
}

theViews

var container = UIView()

theViews.forEach(container.addSubview)
container.subviews

container.subviews.forEach { view in
  print(view)
}


//: Traps
(0..<10).forEach { number in
  print(number)
  if number > 2 { return } // Note this just returns from the closure, it does NOT short circut the forEach
}

//: [Next](@next)
