import SceneKit
import PlaygroundSupport

let width = CGFloat(400)
let height = CGFloat(400)

func randomUnit() -> Float {
  return Float(arc4random_uniform(UInt32.max)) / Float(UInt32.max)
}

var view = SCNView(frame: CGRect(
  x: 0,
  y: 0,
  width: width,
  height: height))
var scene = SCNScene()
view.scene = scene
view.backgroundColor = UIColor.black()
view.autoenablesDefaultLighting = true

var camera = SCNCamera()
var cameraNode = SCNNode()
cameraNode.camera = camera
cameraNode.position = SCNVector3(x: 0, y: 0, z: 3)
scene.rootNode.addChildNode(cameraNode)

var torus = SCNTorus(
  ringRadius: 1.0,
  pipeRadius: 0.2)
var torusNode = SCNNode(geometry: torus)
scene.rootNode.addChildNode(torusNode)

torus.firstMaterial?.diffuse.contents = UIColor(
  hue: CGFloat(arc4random_uniform(100)) / 300.0 + 0.3,
  saturation: 0.5,
  brightness: 1.0,
  alpha: 0.95)
torus.firstMaterial?.specular.contents = UIColor.red()

var spin = CABasicAnimation(keyPath: "rotation")
let toVector = SCNVector4(
  randomUnit(),
  randomUnit(),
  randomUnit(),
  Float(M_PI * 2.0))

spin.toValue = NSValue(scnVector4: toVector)
spin.duration = TimeInterval(arc4random_uniform(20) + 5)
spin.repeatCount = HUGE
torusNode.add(spin, forKey: "spin")

PlaygroundPage.current.liveView = view

