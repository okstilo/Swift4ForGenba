// 現場のためのSwift4 ~iOSアプリ開発に不可欠な実戦スキルのすべて~
// サンプルコード
// 第6章：iOSアプリ開発のためのSwiftプログラミング その1
// 6−9：タプル
// sample-6-9-1.playground

// タプルの書き方の一例
let tuple:(Int, String, Double) = (100, "Hundred", 100.0)

// 取り出し型は0, 1, 2というように定義した順番で取り出す
print(tuple.0)
print(tuple.1)
print(tuple.2)
// print(tuple[0]) // サブスクリプトでの取り扱いはできない

// 変数名を付けるときは型の指定はしない
let tupleWithName = (value: 100, str: "Hundred", num: 100.0)

// 変数名を指定して取り出すことが可能
// 変数名を指定した場合でも、0, 1, 2の連番でも取り出しが可能
print(tupleWithName.value)
print(tupleWithName.str)
print(tupleWithName.num)
