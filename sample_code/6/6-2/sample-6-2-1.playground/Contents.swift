// 現場のためのSwift4 ~iOSアプリ開発に不可欠な実戦スキルのすべて~
// サンプルコード
// 第6章：iOSアプリ開発のためのSwiftプログラミング その1
// 6−2：変数と定数
// sample-6-2-1.playground

// 定数を一度定義すると、あとから変更が行えない
/*
 let str: String = "Hello"
 hello = "Good morning"     // エラーが発生する
*/

// もし変更する場合はあらかじめvarで定義する
var str: String = "Hello"
str = "Good morning"
