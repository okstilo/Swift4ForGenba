// 現場のためのSwift4 ~iOSアプリ開発に不可欠な実戦スキルのすべて~
// サンプルコード
// 第6章：iOSアプリ開発のためのSwiftプログラミング その1
// 6−3：nilとOptional
// sample-6-3-2.playground

import Foundation

// 名前、かな、誕生日、出生地のパラメーターを持つ構造体・Person
struct Person {
    var name: String = ""
    var furigana: String = ""
    var birthday: Date?
    var birthPlace: String?
}

// nilが入っているかどうかをチェックする一例
let person = Person()
if let birthday: Date = person.birthday {
    // nilではなく、birthdayの値がある場合
    print(birthday)
} else {
    // nilだった場合
    print("birthday is nil")
}
