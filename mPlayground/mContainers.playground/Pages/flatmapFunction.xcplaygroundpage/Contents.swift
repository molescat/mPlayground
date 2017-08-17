//: [Previous](@previous)

import Foundation

// Excerpt From: Chris Eidhof. “Advanced Swift.” iBooks.

let suits = ["♠︎", "♥︎", "♣︎", "♦︎"]
let ranks = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"]

let oneSuit = ranks.map { rank in
  ("♠︎", rank)
}
oneSuit

let deck = suits.flatMap { suit in
  ranks.map { rank in
    (suit, rank)
  }
}

deck

deck.count

//: [Next](@next)
