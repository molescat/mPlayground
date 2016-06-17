//: [Previous](@previous)
/*:
 ## Functions - tuples
 */
import Foundation

func dealACard() -> (value: String, suit: String)
{
  let values = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"]
  let suits = ["hearts", "diamonds", "clubs", "spades"]
  
  func randomIndexForCount(count: Int) -> Int {
    return Int(arc4random_uniform(UInt32(count)))
  }
  
  let value = values[randomIndexForCount(values.count)]
  let suit = suits[randomIndexForCount(suits.count)]
  return (value, suit)
}


let a = dealACard()
print("Card is \(a.value) of \(a.suit)")
print("Card is \(a.0) of \(a.1)")


let b = dealACard().suit

//: [Next](@next)
