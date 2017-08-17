//: Access shared instance via `sharedInstance` type property, e.g., `SimpleSingleton.sharedInstance`

public class SimpleSingleton {
  public static let sharedInstance = SimpleSingleton()
  public var title = ""

  private init() { } // private is the default in a playground
}
