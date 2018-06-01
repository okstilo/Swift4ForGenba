// 現場のためのSwift4 ~iOSアプリ開発に不可欠な実戦スキルのすべて~
// サンプルコード
// 第6章：iOSアプリ開発のためのSwiftプログラミング その1
// 6−3：nilとOptional
// sample-6-3-3.playground

import Foundation

// 誕生日の1年後の日付を返す関数の実装
struct Person {
    var name: String = ""
    var furigana: String = ""
    var birthday: Date?
    var birthPlace: String?

    // 1年後の誕生日を返す
    func getNextYearBirthday() -> Date? {
        // nilチェック
        if let birthday: Date = birthday {
            let next: Date = Calendar.current.date(byAdding: .year, value: 1, to: birthday)!
            return next
        }
        // 値がnilであれば、nilを返す
        return nil
    }
}

var person = Person()
person.birthday = Date()

if let birthday: Date = person.getNextYearBirthday() {
    // nilではなく、birthdayの値がある場合
    print(birthday)
} else {
    // nilだった場合
    print("birthday is nil")
}
