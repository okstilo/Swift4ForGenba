// 現場のためのSwift4 ~iOSアプリ開発に不可欠な実戦スキルのすべて~
// サンプルコード
// 第6章：iOSアプリ開発のためのSwiftプログラミング その1
// 6−7：条件分岐
// sample-6-7-8.playground

// 三項条件演算子で書いた一例をif else文で書き直した場合
var boolValue: Bool = true
var result1: String
if boolValue {
    result1 = "true"
} else {
    result1 = "false"
}
print(result1)
// true

boolValue = false

var result2: String
if boolValue {
    result2 = "true"
} else {
    result2 = "false"
}
print(result2)
// false
