/*:
## Animation example

 Make sure the Assistant Editor is showing. 
 The Assistant Editor can be opened from 
  View -> Assistant Editor -> Show Assistant Editor.

 You may need to select Editor > Execute Playground
*/
import UIKit
import PlaygroundSupport

let containerView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 375.0, height: 667.0))

PlaygroundPage.current.liveView = containerView

PlaygroundPage.current.needsIndefiniteExecution = true



let circle = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 50.0, height: 50.0))
circle.center = containerView.center
circle.layer.cornerRadius = 25.0

let startingColor = UIColor.red

circle.backgroundColor = startingColor

containerView.addSubview(circle);

let rectangle = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 50.0, height: 50.0))
rectangle.center = containerView.center
rectangle.layer.cornerRadius = 5.0
rectangle.backgroundColor = UIColor.white

containerView.addSubview(rectangle)

UIView.animate(withDuration: 2.0,
  delay: 0,
  options: [.repeat, .autoreverse],
  animations: { () -> Void in
      let endingColor = UIColor.purple
      circle.backgroundColor = endingColor
      
      let scaleTransform = CGAffineTransform(scaleX: 5.0, y: 5.0)
      circle.transform = scaleTransform
      
      let rotationTransform = CGAffineTransform( rotationAngle: CGFloat(M_PI) )
      rectangle.transform = rotationTransform
  },
  completion: nil)

