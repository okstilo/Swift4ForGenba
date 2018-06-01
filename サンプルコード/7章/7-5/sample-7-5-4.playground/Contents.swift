// 現場のためのSwift4 ~iOSアプリ開発に不可欠な実戦スキルのすべて~
// サンプルコード
// 第7章：iOS アプリ開発のためのSwift プログラミング その２
// 7−5：Swift 4.1の改良点
// sample-7-5-4.playground

import Foundation

//struct Square {
//    var width: Int
//    var height: Int
//}
//
//extension Square: Hashable {
//    var hashValue: Int {
//        return width.hashValue ^ height.hashValue
//    }
//
//    static func == (lhs: Square, rhs: Square) -> Bool {
//        return lhs.width == rhs.width && lhs.height == rhs.height
//    }
//}

// Swift 4.1のHashable
struct Square: Hashable {
    var width: Int
    var height: Int
    
    // hashValueの実装は不要
//    var hashValue: Int {
//        return width.hashValue ^ height.hashValue
//    }

    // ==の実装は不要
//    static func == (lhs: Square, rhs: Square) -> Bool {
//        return lhs.width == rhs.width && lhs.height == rhs.height
//    }
}

var squareSets: Set = [Square(width: 50, height: 100), Square(width: 30, height: 10)]
let newSquare = Square(width: 45, height: 45)
if squareSets.contains(newSquare) {
    print("Already contained Sqaure : (\(newSquare.width), \(newSquare.height)).")
} else {
    squareSets.insert(newSquare)
    print("Add New Square : (\(newSquare.width), \(newSquare.height)).")
}






