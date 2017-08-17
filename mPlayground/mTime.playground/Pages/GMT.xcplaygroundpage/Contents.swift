//: [Previous](@previous)

import Foundation

/* 
 Greenwich Mean Time (GMT)
 Coordinated_Universal_Time (UTC)

 For most purposes, UTC is considered interchangeable with GMT, but GMT is no longer precisely defined by the scientific community.
 
 https://en.wikipedia.org/wiki/Coordinated_Universal_Time
 https://en.wikipedia.org/wiki/Greenwich_Mean_Time

 */

var dateFormatter = DateFormatter()

let timezoneAbbrev = TimeZone(identifier: "Australia/Melbourne")!.abbreviation()
dateFormatter.timeZone.abbreviation()

Calendar.current.timeZone.secondsFromGMT()
dateFormatter.timeZone.secondsFromGMT()

//: [Next](@next)
