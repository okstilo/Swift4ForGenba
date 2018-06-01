// 現場のためのSwift4 ~iOSアプリ開発に不可欠な実戦スキルのすべて~
// サンプルコード
// 第6章：iOSアプリ開発のためのSwiftプログラミング その1
// 6−3：nilとOptional
// sample-6-3-5.playground

// 「？」と「！」をそれぞれ付けて定義した一例
// 「！」のOptionalで定義した場合、アンラップ済みのため、正しい値を常に取り出せる
var str1: String!
print(str1)
// none

str1 = "Hello, world"
print(str1)
// Hello, world

str1 = nil
print(str1)
// none

// Optionalで定義した場合、アンラップをしないと正しい値が取り出せないため、
// アンラップしていない箇所はワーニングが表示される
var str2: String?
print(str2)
// nil

str2 = "Hello, world"
print(str2)
// Optional(“Hello, world”)

str2 = nil
print(str2)
// nil
