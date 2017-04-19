//: [Previous](@previous)

//: ----------------- Closures

class Alpha {
  deinit {
    print("Alpha deinit")
  }
}

class Bravo {
  let alpha = Alpha()

  lazy var printOutValues: () -> () = {
    [unowned self] in
    print(">>> \(self), \(self.alpha)")
  }

  lazy var printOutAlphaValue: () -> () = {
    [weak alpha = self.alpha] in
    print("+++ \(alpha)")
  }

  deinit {
    print("Bravo deinit")
  }
}

var bravo: Bravo? = Bravo()

bravo?.printOutValues()
bravo?.printOutAlphaValue()
bravo = nil

//: [Next](@next)
