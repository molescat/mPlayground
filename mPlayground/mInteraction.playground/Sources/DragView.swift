import UIKit
import XCPlayground

public class DragView: UIView {
  
  private let box: UIView
  private var animator: UIDynamicAnimator?
  private var snapBehavior: UISnapBehavior?
  
  public init() {
    box = UIView(frame: CGRect(x: 0, y: 0, width: 44, height: 44))
    
    super.init(frame: CGRect(x: 0, y: 0, width: 320, height: 320))
    self.backgroundColor = UIColor.white()
    
    box.backgroundColor = UIColor.red()
    self.addSubview(box)
    
    animator = UIDynamicAnimator(referenceView: self)
  }
  
  public required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
}

// MARK: Touch Handling

extension DragView {
  override public func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    if let touch = touches.first {
      let touchLocation = touch.location(in: superview)
      if (box.frame.contains(touchLocation)) {
        snapBehavior = UISnapBehavior(item: box, snapTo: touchLocation)
        animator?.addBehavior(snapBehavior!)
      }
    }
  }
  
  override public func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
    if let touch = touches.first {
      let touchLocation = touch.location(in: superview)
      if let snapBehavior = snapBehavior {
        snapBehavior.snapPoint = touchLocation
      }
    }
  }
  
  public override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
    if let snapBehavior = snapBehavior {
      animator?.removeBehavior(snapBehavior)
    }
    snapBehavior = nil
  }
  
}
