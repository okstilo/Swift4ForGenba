// 現場のためのSwift4 ~iOSアプリ開発に不可欠な実戦スキルのすべて~
// サンプルコード
// 第6章：iOSアプリ開発のためのSwiftプログラミング その1
// 6−6：繰り返し処理
// sample-6-6-7.playground

// 配列の変数に繰り返し処理中に値を追加すると…
var array = [0, 1, 2, 3, 4]
for i in 0..<array.count {
    
    print(i)
    
    if i == 3 {
        array.append(5)
    }
}

// 0
// 1
// 2
// 3
// 4
