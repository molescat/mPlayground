//: Playground - noun: a place where people can play

import UIKit

extension Int {
  var weeks: TimeInterval {
    get {
      return TimeInterval(self * 7 * 24 * 60 * 60)
    }
  }

  var days: TimeInterval {
    return TimeInterval(self * 24 * 60 * 60)
  }

  var hours: TimeInterval {
    return TimeInterval(self * 60 * 60)
  }
}

extension Date {
  func relativeDateTo(_ time: Date,
                      locale: Locale = Locale.current,
                      timeZone: TimeZone? = nil) -> String? {

    func formattedDateFromFormat(_ format: String) -> String {
      let formatter = DateFormatter()
      formatter.dateFormat = format
      formatter.timeZone = timeZone ?? Calendar.current.timeZone
      formatter.locale = locale
      return formatter.string(from: self)
    }

    let interval = time.timeIntervalSince(self)

    if interval <= 1.hours {
      return NSLocalizedString("Just now", comment: "Date display string: Just now")
    }

    if (1.hours...2.hours).contains(interval) {
      return NSLocalizedString("1 hour ago", comment: "Date display string: 1 hour ago")
    }

    if (2.hours...1.days).contains(interval) {
      return NSLocalizedString("2 hours ago", comment: "Date display string: 2 hours ago")
    }

    if (1.days...2.days).contains(interval) {
      return NSLocalizedString("Yesterday", comment: "Date display string: Yesterday")
    }

    if (2.days...1.weeks).contains(interval) {
      return "\(formattedDateFromFormat("EEEE"))"
    }

    if interval > 1.weeks {
      return "\(formattedDateFromFormat("d MMMM"))"
    }

    return nil
  }

}

var dateFormatter = DateFormatter()
dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssSSSZ"
dateFormatter.timeZone.secondsFromGMT()
let locale = Locale(identifier: "en_AU")
let timeZone: TimeZone? = nil //TimeZone(secondsFromGMT: -7 * 3600)

var date1 = dateFormatter.date(from: "2015-04-22T10:42:50+1000")!
var date2 = dateFormatter.date(from: "2015-04-25T10:52:50+1000")!

//expect "Wednesday"
date1.relativeDateTo(date2, locale: locale, timeZone: timeZone)

date1 = dateFormatter.date(from: "2015-04-22T10:42:50+1000")!
date2 = dateFormatter.date(from: "2015-05-02T10:52:50+1000")!
//expect "22 April"
date1.relativeDateTo(date2, locale: locale, timeZone: timeZone)
