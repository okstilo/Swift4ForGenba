// 現場のためのSwift4 ~iOSアプリ開発に不可欠な実戦スキルのすべて~
// サンプルコード
// 第6章：iOSアプリ開発のためのSwiftプログラミング その1
// 6−8：クロージャー
// sample-6-8-4.playground

// クロージャーの実例
// Double型の配列
let salesTaxes = [0.03, 0.05, 0.08, 0.1]

// 配列を回して、パーセンテージで表示に変更して配列に入れる
let taxes = salesTaxes.map { (tax) -> String in
    let percent = tax * 100
    return percent.description + "%"
}
print(taxes)
// ["3.0%", "5.0%", "8.0%", "10.0%"]
