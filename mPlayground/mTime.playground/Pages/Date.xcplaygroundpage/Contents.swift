//: [Previous](@previous)

import Foundation

Calendar.current
Calendar.current.timeZone.secondsFromGMT()
Calendar.current.locale
Calendar.current.timeZone.isDaylightSavingTime()
TimeZone.current.daylightSavingTimeOffset()

let df = DateFormatter()
df.locale = Locale(identifier: "en_US_POSIX")
df.timeZone.secondsFromGMT()
df.timeZone.daylightSavingTimeOffset()
df.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
//df.timeZone = TimeZone(secondsFromGMT: Int(timezone) * 0)

let date = df.date(from:"2016-03-19T11:30:00")!
date.debugDescription
date.timeIntervalSince1970

public extension Date {
  init?(year: Int,
        month: Int,
        day: Int,
        hour: Int = 0,
        minute: Int = 0,
        second: Int = 0,
        timezone: TimeZone = TimeZone.current) {
    let gregorian = Calendar(identifier: .gregorian)
    let comps = DateComponents(calendar: gregorian,
                               timeZone: timezone,
                               era: nil,
                               year: year,
                               month: month,
                               day: day,
                               hour: hour,
                               minute: minute,
                               second: second)
    guard let date = gregorian.date(from: comps) else { return nil }

    self.init(timeInterval: 0, since: date)
  }
}

var timezone = TimeZone(secondsFromGMT: TimeZone.current.secondsFromGMT())!
dump(timezone)

let d1 = Date(year: 2016, month: 3, day: 19, hour: 11, minute: 30, second: 0, timezone: timezone)!
d1.debugDescription
d1.timeIntervalSince1970

timezone = TimeZone.current
dump(timezone)

let d2 = Date(year: 2016, month: 3, day: 19, hour: 11, minute: 30)!
d2.debugDescription
d2.timeIntervalSince1970

//: [Next](@next)
