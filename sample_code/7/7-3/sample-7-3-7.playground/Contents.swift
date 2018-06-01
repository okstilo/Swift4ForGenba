// 現場のためのSwift4 ~iOSアプリ開発に不可欠な実戦スキルのすべて~
// サンプルコード
// 第7章：iOS アプリ開発のためのSwift プログラミング その２
// 7−3：継承と拡張（extension）
// sample-7-3-7.playground

import Foundation

// 変数の値の変化を伴う場合は"mutating"を付けて定義する
extension String {
    mutating func reversed() {
        var str = ""
        for character in self {
            str = String(character) + str
        }
        self = str
    }
}

var str = "Hello, world"
str.reversed()
print(str)
// .dlroW ,olleH
