import Foundation

let remindersDataURL = URL(fileURLWithPath: "Reminders", relativeTo: FileManager.documentDirectoryURL)

let stringURL = FileManager.documentDirectoryURL
    .appendingPathComponent("String")
    .appendingPathExtension("txt")

stringURL.path

// Challenge

let challengeString: String = "To Do List"
let challengeURL: URL = URL(fileURLWithPath: challengeString, relativeTo: FileManager.documentDirectoryURL).appendingPathExtension("txt")

challengeURL.lastPathComponent
challengeURL.path

//: ## Data Types
//: ### Integers
let age: UInt8 = 32
MemoryLayout.size(ofValue: age)
MemoryLayout<UInt8>.size
UInt8.min
UInt8.max

let height: Int8 = 72
MemoryLayout.size(ofValue: height)
Int8.min
Int8.max

//: ### Floats
let weight: Float = 154.5
MemoryLayout.size(ofValue: weight)
Float.leastNormalMagnitude
Float.greatestFiniteMagnitude

//: ### Doubles
let earthRadius: Double = 3958.8
MemoryLayout.size(ofValue: earthRadius)
Double.leastNormalMagnitude
Double.greatestFiniteMagnitude

//: ### Binary & Hexadecimal
let ageBinary: UInt8 = 0b0010_0000
let ageBinaryNegative: Int8 = -0b0010_0000
let weightHexadecimal: UInt16 = 0x9B
let weightHexadecimalNegative: Int16 = -0x9B

//: ## Bytes
let favoriteBytes: [UInt8] = [
    240,          159,          152,          184,
    240,          159,          152,          185,
    0b1111_0000,  0b1001_1111,  0b1001_1000,  186,
    0xF0,         0x9F,         0x98,         187
]

MemoryLayout<UInt8>.size * favoriteBytes.count

//: Saving & loading data

let favoriteBytesData = Data(favoriteBytes)
let favoriteBytesURL = URL(fileURLWithPath: "Favorite Bytes", relativeTo: FileManager.documentDirectoryURL)

try favoriteBytesData.write(to: favoriteBytesURL)

let savedFavoriteBytesData = try Data(contentsOf: favoriteBytesURL)
let savedFavoriteBytes = Array(savedFavoriteBytesData)

favoriteBytes == savedFavoriteBytes
favoriteBytesData == savedFavoriteBytesData

//: String

try favoriteBytesData.write(to: favoriteBytesURL.appendingPathExtension("txt"))

let string = String(data: savedFavoriteBytesData, encoding: .utf8)!


//: Challenge

let catsURL = URL(fileURLWithPath: "Cats.txt", relativeTo: FileManager.documentDirectoryURL)

try string.write(to: catsURL, atomically: true, encoding: .utf8)

let catsChallengeString = try String(contentsOf: catsURL)
