//: [Previous](@previous)

import Foundation

let locale = Locale(identifier: "en_AU")

//let dateString = "2015-04-22T10:42:00+1000" // Wednesday, 22Apr, 10:42am
//let dateFormat = "yyyy-MM-dd'T'HH:mm:ssSSSZ"

let dateString = "2015-04-22T10:42:00"  // Wednesday, 22Apr, 10:42am
let dateFormat = "yyyy-MM-dd'T'HH:mm:ss"

var dateFormatter = DateFormatter()
dateFormatter.dateFormat = dateFormat
dateFormatter.timeZone = TimeZone(secondsFromGMT: -7 * 3600)

var date = dateFormatter.date(from: dateString)!
date.debugDescription
date.description(with: locale)


//: [Next](@next)
