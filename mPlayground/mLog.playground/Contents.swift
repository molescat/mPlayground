//: [Previous](@previous)
/*:
 ## Logging
 */
import Foundation

//: ### Foundation

print("print")
debugPrint("debugPrint")
NSLog("NSLogv var args: %@ and %@", "cat", "dog")

//: ### Protocol

protocol Loggable {
  var isLoggingEnabled: Bool { get }
  func debugLog(_ format: String,
                _ args: CVarArg...,
                  file: String,
              function: String,
                  line: Int
  )
}

extension Loggable {
  var isLoggingEnabled: Bool { get { return false } }
  func debugLog(_ format: String,
                _ args: CVarArg...,
                  file: String = #file,
              function: String = #function,
                  line: Int = #line) {
    if (isLoggingEnabled && _isDebugAssertConfiguration()) {
      let preamble = String("\n\tFile:\(file)\n\tFunction:\(function)\n\tLine:\(line)")
      print(preamble)

      if args.count > 0 {
        print(String(format: format, arguments: args))
      } else {
        print(format)
      }
    }
  }
}

struct TestLog: Loggable {
  var isLoggingEnabled: Bool { get { return true } }
}

var testLog = TestLog()
testLog.debugLog("debugLog")
testLog.debugLog("debugLog var args: %@ and %@", "cat", "dog")

//: ### Struct

public struct Tracer: Loggable {

  private static let sharedInstance = Tracer()
  public static var enabled: Bool = true

  var isLoggingEnabled: Bool { get { return Tracer.enabled } }

  public static func print(_ format: String,
                           _ args: CVarArg...,
                             file: String = #file,
                         function: String = #function,
                             line: Int = #line) {
      let message = String(format:format, arguments:args)
      sharedInstance.debugLog("%@", message, file, function, line)
  }
}

Tracer.print("tracer log")
Tracer.print("tracer logvar args: %@ and %@", "cat", "dog")

//: [Next](@next)
