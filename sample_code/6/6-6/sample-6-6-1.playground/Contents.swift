// 現場のためのSwift4 ~iOSアプリ開発に不可欠な実戦スキルのすべて~
// サンプルコード
// 第6章：iOSアプリ開発のためのSwiftプログラミング その1
// 6−6：繰り返し処理
// sample-6-6-1.playground

// 繰り返し処理の一例：0から9までを出力する
let array: [Int] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

// 10回の繰り返しを行う（※A）
for i in 0..<10 {
    print(array[i])
}
// 0 1 2 3 4 5 6 7 8 9

// 配列の格納数分処理を行う（※B）
for i in array.indices {
    print(array[i])
}
// 0 1 2 3 4 5 6 7 8 9

// 配列の格納数分の処理を行う（※C）
array.forEach { i in
    print(i)
}
// 0 1 2 3 4 5 6 7 8 9
