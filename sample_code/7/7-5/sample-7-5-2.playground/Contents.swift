// 現場のためのSwift4 ~iOSアプリ開発に不可欠な実戦スキルのすべて~
// サンプルコード
// 第7章：iOS アプリ開発のためのSwift プログラミング その２
// 7−5：Swift 4.1の改良点
// sample-7-5-2.playground

import Foundation

struct Square {
    var width: Double
    var height: Double
}

// 構造体・SquareにHashableをextensionで適用
extension Square: Hashable {
    // HashableプロトコルはhashValueの実装が必要
    // 辞書のキー、Setで使用可能になる
    var hashValue: Int {
        return width.hashValue ^ height.hashValue
    }

    // HashableはEquatableプロトコルを継承しているため、以下も実装
    static func == (lhs: Square, rhs: Square) -> Bool {
        return lhs.width == rhs.width && lhs.height == rhs.height
    }
}

// 集合データを定義
var squareSets: Set = [Square(width: 50, height: 100), Square(width: 30, height: 10)]

// 新しくSquare構造体を定義
let newSquare = Square(width: 45, height: 45)

// 集合データに含まれているか判定
if squareSets.contains(newSquare) {
    print("Already contained Sqaure : (\(newSquare.width), \(newSquare.height)).")
} else {
    squareSets.insert(newSquare)
    print("Add New Square : (\(newSquare.width), \(newSquare.height)).")
}
// Add New Square : (45.0, 45.0).






