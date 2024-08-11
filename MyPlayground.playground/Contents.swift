import Cocoa

enum Rank: Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king
    
    func simpleDescription() -> String {
        switch self {
            case .ace:
                return "ace"
            case .jack:
                return "jack"
            case .queen:
                return "queen"
            case .king:
                return "king"
            default:
                return String(self.rawValue)
        }
    }
}
let ace = Rank.two
let aceRawValue = ace.rawValue

func isBigger(enum1: Rank, enum2: Rank) -> Bool {
    return enum1.rawValue > enum2.rawValue
}

let a = Rank.nine
let b = Rank.eight
isBigger(enum1: a, enum2: b)

if let convertedRank = Rank(rawValue: 11) {
    print(convertedRank)
    let threeDescription = convertedRank.simpleDescription()
    print(threeDescription)
}
print(a)

enum Suit {
    case spades, hearts, diamonds, clubs


    func simpleDescription() -> String {
        switch self {
        case .spades:
            return "spades"
        case .hearts:
            return "hearts"
        case .diamonds:
            return "diamonds"
        case .clubs:
            return "clubs"
        }
    }
    
    func color() -> String {
        switch self {
            case .spades, .clubs:
                return "black"
            case .hearts, .diamonds:
                return "red"
        }
    }
}
let hearts = Suit.hearts
let heartsDescription = hearts.simpleDescription()
print(hearts.color())

enum ServerResponse {
    case result(String, String)
    case failure(String)
}

let success = ServerResponse.result("6:00 am", "8:09 pm")
let failure = ServerResponse.failure("out of cheese.")

switch success {
    case let .failure(message):
        print("Failure... \(message)")
    case let .result(sunrise, sunset):
        print("Sunrise is at \(sunrise) and sunset is at \(sunset)." )

}

let point = (x: -1, y: 4)

switch point {
    case let q1 where (point.0 > 0) && (point.1 > 0):
        print("\(q1) is in quadrant 1.")
    case let q2 where (point.x < 0) && (point.y > 0):
        print("\(q2) is in quadrant 2.")
    case let q3 where (point.x < 0) && (point.y < 0):
        print("\(q3) is in quadrant 3.")
    case let q4 where (point.x > 0) && (point.y < 0):
        print("\(q4) is in quadrant 4.")
    default:
        print("Out of control.")
}

let age = 29
if age >= 18, age <= 35, age >= 21, age < 30 {
    print("You are the person!")
}
