//: [Previous](@previous)
/*:
## Flatmap
*/
import Foundation

let nestedArray = [[1,2,3,4],[6,7,8,9]]

let joined = Array(nestedArray.joined(separator: []))
let reduced = nestedArray.reduce([], +)
let flattened = nestedArray.flatMap{$0}
joined // [1, 2, 3, 4, 6, 7, 8, 9]
reduced // [1, 2, 3, 4, 6, 7, 8, 9]
flattened // [1, 2, 3, 4, 6, 7, 8, 9]


let joinedPlus = Array(nestedArray.joined(separator: [5]))
let reducedPlus = nestedArray.reduce([]){ $0 + [5] + $1}
let flattenedPlus = nestedArray.flatMap{$0 + [5]}
joinedPlus // [1, 2, 3, 4, 5, 6, 7, 8, 9]
reducedPlus // [5, 1, 2, 3, 4, 5, 6, 7, 8, 9]
flattenedPlus // [1, 2, 3, 4, 5, 6, 7, 8, 9, 5]


//: Let's start with a simple array of strings
let myStrings = ["one","two","three"]

//: Joining things together
myStrings.joined(separator: ", ")  // "one, two, three"

//: Reducing things together
let reducedWords = myStrings.reduce("", +) // "onetwothree"

let reducedReverseWords = myStrings.reduce("",{$1 + $0})
reducedReverseWords // "threetwoone"

let reducedReverseWordsDelimiter = myStrings.reduce("", {$1 + "-" + $0})
reducedReverseWordsDelimiter // "three-two-one-"

let myList = myStrings.enumerated().reduce("", {
    $0 + $1.element + ($1.offset < myStrings.endIndex-1 ? ", " : ".")
})
myList // "one, two, three."


//: So next let's look at nested arrays
let myThreeNestedStrings = [["one","two","three"],["five","six","seven"],["eight","nine","ten"]]

Array(myThreeNestedStrings.joined(separator:["XXX"]))

//: Notice 'YYY' is at the start
let reducedNested = myThreeNestedStrings.reduce(["YYY"], +)
reducedNested


//: So what about flatmap
//: Using flatMap() there is no initial value, it always returns an array of whichever type is generated, it also doesn't allow access to the cumulating initial value (represented as $0 in the reduce() function)

let flatmapIsLikeJoinNested = myThreeNestedStrings.flatMap{$0 + ["XXX"]}
flatmapIsLikeJoinNested

//: [Next](@next)
