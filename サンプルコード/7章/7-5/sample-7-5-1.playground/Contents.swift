// 現場のためのSwift4 ~iOSアプリ開発に不可欠な実戦スキルのすべて~
// サンプルコード
// 第7章：iOS アプリ開発のためのSwift プログラミング その２
// 7−5：Swift 4.1の改良点
// sample-7-5-1.playground

import Foundation

// Equatable を構造体・Studentに適用
// Equatableを適用
struct Student: Equatable {
    var name: String = ""

    // Equatableを適用する場合、「==」を追加する
    // 構造体に定義されている変数が同じかどうかを確認して判定
    public static func ==(lhs: Student, rhs: Student) -> Bool {
        return lhs.name == rhs.name
    }
}

let student1 = Student(name: "Mike")
let student2 = Student(name: "Mike")

if student1.name == student2.name {
    print("Same Name!")
}

if student1 == student2 {
    print("Same Struct!")
}
