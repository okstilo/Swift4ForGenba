// 現場のためのSwift4 ~iOSアプリ開発に不可欠な実戦スキルのすべて~
// サンプルコード
// 第6章：iOSアプリ開発のためのSwiftプログラミング その1
// 6−6：繰り返し処理
// sample-6-6-8.playground

// whileを使用した繰り返し処理の一例
var array = [0, 1, 2, 3, 4]
var i = 0

while array.count > i {
    
    print(array[i])
    i += 1
    
    if i == 3 {
        array.append(5)
    }
}

// 0
// 1
// 2
// 3
// 4
// 5
