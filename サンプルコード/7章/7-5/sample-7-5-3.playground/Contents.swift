// 現場のためのSwift4 ~iOSアプリ開発に不可欠な実戦スキルのすべて~
// サンプルコード
// 第7章：iOS アプリ開発のためのSwift プログラミング その２
// 7−5：Swift 4.1の改良点
// sample-7-5-3.playground

import Foundation

// Swift 4.1のEquatable
struct Student: Equatable {
    var name: String = ""

    // ==の実装は不要
//    public static func ==(lhs: Student, rhs: Student) -> Bool {
//        return lhs.name == rhs.name
//    }
}

let student1 = Student(name: "Mike")
let student2 = Student(name: "Mike")

if student1.name == student2.name {
    print("Same Name!")
}

if student1 == student2 {
    print("Same Struct!")
}
