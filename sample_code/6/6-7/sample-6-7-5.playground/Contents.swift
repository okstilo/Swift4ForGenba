// 現場のためのSwift4 ~iOSアプリ開発に不可欠な実戦スキルのすべて~
// サンプルコード
// 第6章：iOSアプリ開発のためのSwiftプログラミング その1
// 6−7：条件分岐
// sample-6-7-5.playground

// switch文の一例
let num: Int = 5

// switchの後に条件式を書く
switch num {
// case文は条件式の結果、または変数の内容をcase文として書く
case 0:
    print(num)
case 1:
    print(num)
case -1:
    print(num)
default:
    // caseで当てはまらないものは全てdefaultの処理を行う
    print("num is not 0 and 1 and -1")
}
// num is not 0 and 1 and -1

