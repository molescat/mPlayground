//: [Previous](@previous)

import Foundation

enum TrackingSource {
  case deepLink
  case instigator(source: String)
}

func perform(trackingSource: TrackingSource) {
  switch trackingSource {
  case .deepLink:
    print("deeplink")
  case let .instigator(source):
    print("instigator", source)
  default:
    print("default")
  }
}


var trackingSource: TrackingSource
//trackingSource = .deepLink
trackingSource = .instigator(source: "SearchResults")

perform(trackingSource: trackingSource)

//: [Next](@next)
