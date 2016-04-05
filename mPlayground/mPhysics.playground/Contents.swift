/*:
## Physics
*/
import UIKit
import XCPlayground

//: Scene
var container = UIView(frame: CGRect(x: 0, y: 0, width: 320, height: 320))
container.backgroundColor = UIColor.lightGrayColor()

var square = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 44))
square.backgroundColor = UIColor.redColor()

container.addSubview(square)

//: Physics
var animator = UIDynamicAnimator(referenceView: container)

var itemBehavior = UIDynamicItemBehavior(items: [square])
itemBehavior.elasticity = 1.0
animator.addBehavior(itemBehavior)

var gravity = UIGravityBehavior(items: [square])
animator.addBehavior(gravity)

var collision = UICollisionBehavior(items: [square])
collision.translatesReferenceBoundsIntoBoundary = true
animator.addBehavior(collision)

XCPlaygroundPage.currentPage.liveView = container
