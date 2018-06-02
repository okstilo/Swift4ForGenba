// 現場のためのSwift4 ~iOSアプリ開発に不可欠な実戦スキルのすべて~
// サンプルコード
// 第6章：iOSアプリ開発のためのSwiftプログラミング その1
// 6−3：nilとOptional
// sample-6-3-3.playground

import Foundation

// 誕生日の1年後の日付を返す関数の実装
struct Person {
    var birthday: Date?

    // 1年後の誕生日を返す
    func getNextYearBirthday() -> Date? {
        // nilチェック
        guard let birthday = self.birthday else { return nil } // 値がnilであれば、nilを返す

        let next: Date = Calendar.current.date(byAdding: .year, value: 1, to: birthday)!
        return next
    }
}

var person = Person(birthday: Date())

if let birthday: Date = person.getNextYearBirthday() {
    // nilではなく、birthdayの値がある場合
    print(birthday)
} else {
    // nilだった場合
    print("birthday is nil")
}
