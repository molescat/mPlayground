//: [Previous](@previous)

import Foundation

let nestedArray = [[1,2,3,4],[6,7,8,9]]

let joined = Array(nestedArray.joinWithSeparator([]))
let reduced = nestedArray.reduce([], combine: {$0 + $1})
let flattened = nestedArray.flatMap{$0}
joined // [1, 2, 3, 4, 6, 7, 8, 9]
reduced // [1, 2, 3, 4, 6, 7, 8, 9]
flattened // [1, 2, 3, 4, 6, 7, 8, 9]


let joinedPlus = Array(nestedArray.joinWithSeparator([5]))
let reducedPlus = nestedArray.reduce([], combine: {$0 + [5] + $1})
let flattenedPlus = nestedArray.flatMap{$0 + [5]}
joinedPlus // [1, 2, 3, 4, 5, 6, 7, 8, 9]
reducedPlus // [5, 1, 2, 3, 4, 5, 6, 7, 8, 9]
flattenedPlus // [1, 2, 3, 4, 5, 6, 7, 8, 9, 5]


//: Let's start with a simple array of strings

let myStrings = ["one","two","three"]


//: Joining things together
myStrings.joinWithSeparator(", ")  // "one, two, three"


//: Reducing things together
let reducedWords = myStrings.reduce("",combine:{$0 + $1}) // "onetwothree"
reducedWords

let reducedReverseWords = myStrings.reduce("",combine:{$1 + $0}) // "threetwoone"
reducedReverseWords

let reducedReverseWordsDelimiter = myStrings.reduce("",combine:{$1 + "-" + $0}) // "three-two-one-"
reducedReverseWordsDelimiter

let myList = myStrings.enumerate().reduce("",combine:{
    $0 + $1.element + ($1.index < myStrings.endIndex-1 ? ", " : ".")
}) // "one, two, three."
myList


//: So next let's look at nested arrays
let myThreeNestedStrings = [["one","two","three"],["five","six","seven"],["eight","nine","ten"]]

Array(myThreeNestedStrings.joinWithSeparator(["XXX"]))

//: Notice 'YYY' is at the start
let reducedNested = myThreeNestedStrings.reduce(["YYY"],combine:{$0 + $1})
reducedNested


//: So what about flatmap
//: Using flatMap() there is no initial value, it always returns an array of whichever type is generated, it also doesn't allow access to the cumulating initial value (represented as $0 in the reduce() function)

let flatmapIsLikeJoinNested = myThreeNestedStrings.flatMap{$0 + ["XXX"]}
flatmapIsLikeJoinNested


