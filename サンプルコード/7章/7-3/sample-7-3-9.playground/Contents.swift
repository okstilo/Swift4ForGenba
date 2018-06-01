// 現場のためのSwift4 ~iOSアプリ開発に不可欠な実戦スキルのすべて~
// サンプルコード
// 第7章：iOS アプリ開発のためのSwift プログラミング その２
// 7−3：継承と拡張（extension）
// sample-7-3-9.playground

// ネスト型のエクステンションの実装例
extension Int {
    // enumの定義
    enum Kind {
        case negative, zero, positive
    }
    
    // Int型の種類を判別する処理
    var kind: Kind {
        switch self {
        case 0:
            return .zero
        case let x where x > 0:
            return .positive
        default:
            return .negative
        }
    }
}

let numbers: [Int] = [0, 1, -1, 10, -100, 0]
for number in numbers {
    switch number.kind {
    case .negative:
        print("- ", terminator: "")
    case .zero:
        print("0 ", terminator: "")
    case .positive:
        print("+ ", terminator: "")
    }
}
// 0 + - + - 0
