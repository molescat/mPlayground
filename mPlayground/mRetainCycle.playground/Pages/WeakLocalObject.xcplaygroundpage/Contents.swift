//: [Previous](@previous)

class Foo {
  var success: (() -> Void)?

  func display() {
    print("display")
  }

  func work() {
    print("work")
  }

  deinit {
    print("deinit Foo")
  }
}

class Test {

  func simple () {
    let x = Foo()
    x.success = { [weak x] in
      x?.display()
    }
    x.work()
    x.success?()
  }
}

var x: Test? = Test()
x?.simple()

//: [Next](@next)
