// 現場のためのSwift4 ~iOSアプリ開発に不可欠な実戦スキルのすべて~
// サンプルコード
// 第7章：iOS アプリ開発のためのSwift プログラミング その２
// 7−3：継承と拡張（extension）
// sample-7-3-2.playground

// Intのエクステンション実装の一例
extension Int {
    func twoTimes() -> Int {
        return self * 2
    }
}

// エクステンションの具体的な使い方の一例
let num: Int = 100
print("num is " + "\(num.twoTimes())")
// number is 200

print("num is " + "\(100.twoTimes())")
// number is 200
