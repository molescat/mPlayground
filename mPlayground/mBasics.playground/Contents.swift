// Playground - Basics
// Plain old types, strings, casts and optionals

import UIKit

// ---------------------------------------- Plain types, const and variables
let mVersion = 1.0
let mFloat: Float = -33.3
var mDouble = -33.3
var mCount = 1
var mCounter: UInt64 = 1
var mBool: Bool = true
let mUnicode = "\u{1F425}"
let mAcute: Character = "\u{E9}"


// ---------------------------------------- Number conversions
let stringNumber = "123"
var mInt = stringNumber.toInt()!
var someNumber: Int = stringNumber.toInt()!


// ---------------------------------------- Number bounds
var mMax8 = UInt8.max
var mMax32 = UInt32.max
var mMinS32 = Int32.min


// ---------------------------------------- Casting
let mUInt16: UInt16 = UInt16(mMax8)


// ---------------------------------------- Optional
var optionalString: String? = "Hello"
//optionalString = nil

//let bang = optionalString!

if let name = optionalString {
  var result = name
  println(result)
}

// Nil Coalescing Operator
var x: String = optionalString ?? "sentinel"

