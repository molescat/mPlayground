// 
// Animation example
// "Run in Full Simulator" option should be enabled in the Playground Settings
// You may need to select Editor > Execute Playground
//

import UIKit
import XCPlayground

let containerView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 375.0, height: 667.0))
XCPShowView("Container View", view: containerView)

let circle = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 50.0, height: 50.0))
circle.center = containerView.center
circle.layer.cornerRadius = 25.0

let startingColor = UIColor.redColor()

circle.backgroundColor = startingColor

containerView.addSubview(circle);

let rectangle = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 50.0, height: 50.0))
rectangle.center = containerView.center
rectangle.layer.cornerRadius = 5.0
rectangle.backgroundColor = UIColor.whiteColor()

containerView.addSubview(rectangle)

UIView.animateWithDuration(2.0, animations: { () -> Void in
  let endingColor = UIColor.purpleColor()
  circle.backgroundColor = endingColor
  
  let scaleTransform = CGAffineTransformMakeScale(5.0, 5.0)
  circle.transform = scaleTransform
  
  let rotationTransform = CGAffineTransformMakeRotation( CGFloat(M_PI) )
  rectangle.transform = rotationTransform
})

