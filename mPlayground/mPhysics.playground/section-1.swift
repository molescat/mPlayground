// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var animator: UIDynamicAnimator!
var gravity: UIGravityBehavior!

var view: UIView = UIView(frame: CGRect(x: 0, y: 0, width: 320, height: 320))
view.backgroundColor = UIColor.lightGrayColor()

var square: UIView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
square.backgroundColor = UIColor.redColor()

view.addSubview(square)

animator = UIDynamicAnimator(referenceView: view)
gravity = UIGravityBehavior(items: [square])
animator.addBehavior(gravity)


var collision: UICollisionBehavior!
collision = UICollisionBehavior(items: [square])
collision.translatesReferenceBoundsIntoBoundary = true
animator.addBehavior(collision)

view
