//: [Previous](@previous)
/*:
 ## Functions - error handling
 */
import Foundation


enum MyError: Error {
  case a
  case b(code: Int, function: String, line: Int)
}

func performAction() throws {
  print("Action started")
  
  let encounteredErrorA = simulatedErrorDidOccur()
  let encounteredErrorB = simulatedErrorDidOccur()

  defer {
    let count = (encounteredErrorA ? 1 : 0) + (encounteredErrorB ? 1 : 0)
    print("  Action error count \(count)")
  }

  guard encounteredErrorA == false else {
    throw MyError.a
  }
  
  guard encounteredErrorB == false else {
    let randomCode = Int(arc4random_uniform(10))
    throw MyError.b(code: randomCode, function: #function, line: #line)
  }
  
  print("  Action completed successfully!")
}

func doSomething() {
  do {
    try performAction()
    print("No error occurred")
  } catch MyError.a {
    print("Error A encountered!")
  } catch let MyError.b(code, function, line) where code > 4 {
    print("Error B encountered in \(function) at line \(line) (code: \(code))")
  } catch {
    print("Error - Something went wrong: \(error)")
  }
}

doSomething()


//------------------------------ Throw the Throw
func doSomethingThatCanThrow() throws {
  try performAction()
}

do {
  try doSomethingThatCanThrow()
} catch {
  print("Fail - doSomethingThatCanThrow did throw")
}


//------------------------------ try inline
func performActionThatMightFail() throws -> String {
  return "Success!"
}

let success = try? performActionThatMightFail()

try! performActionThatMightFail()

//: [Next](@next)
