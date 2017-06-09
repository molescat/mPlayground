/*:
## Set
*/
import Foundation

var letters = Set<Character>()
print("letters is of type Set<Character> with \(letters.count) items.")

letters.insert("a")
letters.insert("b")
letters.count

letters = []
// letters is now an empty set, but is still of type Set<Character>

var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip hop"]
var favoriteGenresShort: Set = ["Rock", "Blues"]

favoriteGenres.insert("Jazz")

var intersection = favoriteGenres.intersection(favoriteGenresShort)
var union = favoriteGenres.union(favoriteGenresShort)


