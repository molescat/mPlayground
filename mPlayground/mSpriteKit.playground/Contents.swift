//: [Previous](@previous)
/*:
 ## SpriteKit
 */

import SpriteKit
import PlaygroundSupport

func makeBouncerAt(_ position: CGPoint) -> SKSpriteNode {
  let bouncer = SKSpriteNode(color: #colorLiteral(red: 0, green: 1, blue: 0, alpha: 1), size: CGSize(width: 50, height: 50))
  bouncer.position = position
  bouncer.physicsBody = SKPhysicsBody(circleOfRadius: bouncer.size.width / 2.0)
//  bouncer.physicsBody?.isDynamic = false
  bouncer.physicsBody?.restitution = 0.8
  return bouncer
}


let skView = SKView(frame: CGRect(x: 0, y: 0, width: 320, height: 320))

let skScene = SKScene(size: CGSize(width: 320, height: 320))
skScene.backgroundColor  = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
//skScene.scaleMode = .aspectFit
skScene.physicsBody = SKPhysicsBody(edgeLoopFrom: skView.frame)


let box = makeBouncerAt(CGPoint(x: 75, y: 250))
skScene.addChild(box)

skView.presentScene(skScene)

PlaygroundPage.current.liveView = skView
PlaygroundPage.current.needsIndefiniteExecution = true

