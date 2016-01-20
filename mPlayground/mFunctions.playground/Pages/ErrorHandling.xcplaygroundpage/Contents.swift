//: [Previous](@previous)

import Foundation


enum Error: ErrorType {
  case A
  case B(code: Int, function: String, line: Int)
}

func performAction() throws {
  defer {
    let count = (encounteredErrorA ? 1 : 0) + (encounteredErrorB ? 1 : 0)
    print("  Action error count \(count)")
  }
  
  print("Action started")
  
  let encounteredErrorA = simulatedErrorDidOccur()
  let encounteredErrorB = simulatedErrorDidOccur()
  
  guard encounteredErrorA == false else {
    throw Error.A
  }
  
  guard encounteredErrorB == false else {
    let randomCode = Int(arc4random_uniform(10))
    throw Error.B(code: randomCode, function: __FUNCTION__, line: __LINE__)
  }
  
  print("  Action completed successfully!")
}

func doSomething() {
  do {
    try performAction()
    print("No error occurred")
  } catch Error.A {
    print("Error A encountered!")
  } catch let Error.B(code, function, line) where code > 4 {
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
