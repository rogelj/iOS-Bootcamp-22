//: [Previous](@previous)

enum Month: Int {
    case january = 1, february, march, april, may, june, july, august, septemner, october, november, december
}

let month: Month = Month.october

print(month.rawValue)

func monthsUntilXmas(from month: Month) -> Int {
    Month.december.rawValue - month.rawValue
}

monthsUntilXmas(from: .november)

let rawMonth = Month(rawValue: 3)

enum Season: String, CaseIterable {
    /// ☃️
    case winter
    /// 🌸
    case spring
    ///
    case summer
    /// 🍂
    case autumn
}

Season.winter

Season.winter.rawValue

Season.allCases.filter {
    $0.rawValue.first == "s"
}


//: [Next](@next)
