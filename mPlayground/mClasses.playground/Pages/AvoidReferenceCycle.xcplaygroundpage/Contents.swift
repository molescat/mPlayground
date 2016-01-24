//: [Previous](@previous)

import Foundation

class Band {
  var drummer: Drummer
  
  init(drummer: Drummer) {
    self.drummer = drummer
  }
  
  deinit {
    print("Band will be deallocated")
  }
}

class Drummer {
  weak var band: Band?
//  var band: Band?
  
  deinit {
    print("Drummer will be deallocated")
  }
}

var ringo: Drummer? = Drummer()

var beatles: Band? = Band(drummer: ringo!)

ringo?.band = beatles

ringo = nil
beatles = nil



print("----")

// ---------- Closures

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
