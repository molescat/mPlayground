//: [Previous](@previous)

// http://initwithstyle.net/2015/11/tdd-in-swift-playgrounds/

import XCTest

class MyTests: XCTestCase {
  func testShouldFail() {
    XCTFail("You must fail to succeed!")
  }
  func testShouldPass() {
    XCTAssertEqual(2+2, 4)
  }

}

//:
class PlaygroundTestObserver: NSObject, XCTestObservation {
  func testCase(_ testCase: XCTestCase,
                didFailWithDescription description: String,
                inFile filePath: String?,
                atLine lineNumber: UInt) {
    print("Test failed on line \(lineNumber): \(testCase.name), \(description)")
  }
}

let observer = PlaygroundTestObserver()
XCTestObservationCenter.shared().addTestObserver(observer)

//:

struct TestRunner {
  func runTests(_ testClass: AnyClass) {
    print("Running test suite \(testClass)")

    let tests = testClass as! XCTestCase.Type
    let testSuite = tests.defaultTestSuite()
    testSuite.run()
    let run = testSuite.testRun as! XCTestSuiteRun

    print("Ran \(run.executionCount) tests in \(run.testDuration)s with \(run.totalFailureCount) failures")
  }
}

//:

TestRunner().runTests(MyTests.self)

//: [Next](@next)
