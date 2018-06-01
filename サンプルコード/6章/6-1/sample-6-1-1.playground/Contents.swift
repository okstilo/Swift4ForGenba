// 現場のためのSwift4 ~iOSアプリ開発に不可欠な実戦スキルのすべて~
// サンプルコード
// 第6章：iOSアプリ開発のためのSwiftプログラミング その1
// 6−1：型
// sample-6-1-1.playground

// 基本的な変数の定義
let num: Int = 0
var str: String = "Hello world!"

// 異なる型どうしの計算の実施
// Int型とDouble型同士の計算はエラーが発生する
/*
let price: Int = 100
let tax: Double = 1.08
let total: Double = price * tax
*/

// Double型どうしの計算
let price: Double = 100
let tax: Double = 1.08
let total: Double = price * tax

print(total)
