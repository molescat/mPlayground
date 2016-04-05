import UIKit
import XCPlayground

public class DragView: UIView {
  
  private var animator: UIDynamicAnimator?
  private var snapBehavior: UISnapBehavior?
  private let box: UIView?
  
  public init() {
    box = UIView(frame: CGRect(x: 0, y: 0, width: 44, height: 44))
    
    super.init(frame: CGRect(x: 0, y: 0, width: 320, height: 320))
    self.backgroundColor = UIColor.whiteColor()
    
    box?.backgroundColor = UIColor.redColor()
    self.addSubview(box!)
    
    animator = UIDynamicAnimator(referenceView: self)
  }
  
  public required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
}

// MARK: Touch Handling

extension DragView {
  override public func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
    if let touch = touches.first {
      let touchLocation = touch.locationInView(superview)
      if (CGRectContainsPoint(box!.frame, touchLocation)) {
        snapBehavior = UISnapBehavior(item: box!, snapToPoint: touchLocation)
        animator?.addBehavior(snapBehavior!)
      }
    }
  }
  
  override public func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
    if let touch = touches.first {
      let touchLocation = touch.locationInView(superview)
      if let snapBehavior = snapBehavior {
        snapBehavior.snapPoint = touchLocation
      }
    }
  }
  
  public override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
    if let snapBehavior = snapBehavior {
      animator?.removeBehavior(snapBehavior)
    }
    snapBehavior = nil
  }
  
}