//: Protocol

import Foundation

// Default parameters cannot be defined in a protocol

protocol DemonstratesProtocol {
  
  var propertyRequirement: String { get set }
  
  init?(x: Int, y: Int)
  
  func methodRequirement(input: String?) -> Int?
  
  subscript(x: Int, y: Int) -> Int { get set }
  
}

