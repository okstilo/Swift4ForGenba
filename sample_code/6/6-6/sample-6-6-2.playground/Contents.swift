// 現場のためのSwift4 ~iOSアプリ開発に不可欠な実戦スキルのすべて~
// サンプルコード
// 第6章：iOSアプリ開発のためのSwiftプログラミング その1
// 6−6：繰り返し処理
// sample-6-6-2.playground

// 繰り返し処理の一例：0から9までを降順で出力する
let array: [Int] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

for i in (0..<10).reversed() {
    print(array [i])
}
// 9 8 7 6 5 4 3 2 1 0

for i in array.indices.reversed() {
    print(array[i])
}
// 9 8 7 6 5 4 3 2 1 0

array.reversed().forEach { i in
    print(i)
}
// 9 8 7 6 5 4 3 2 1 0
