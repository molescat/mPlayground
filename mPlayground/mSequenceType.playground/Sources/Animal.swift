import Foundation

public struct Animal {
  private var code: Int
  public var name: String
  public init(_ code: Int, name: String) {
    self.code = code
    self.name = name
  }
  public func test(code: Int) -> Bool {
    return self.code == code
  }
}
