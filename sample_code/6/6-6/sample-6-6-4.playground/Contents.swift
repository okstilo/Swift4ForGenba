// 現場のためのSwift4 ~iOSアプリ開発に不可欠な実戦スキルのすべて~
// サンプルコード
// 第6章：iOSアプリ開発のためのSwiftプログラミング その1
// 6−6：繰り返し処理
// sample-6-6-4,playground

// 間隔の繰り返し処理の一例
let minutes = 60
let minuteInterval = 5

// 最後を含めない場合はstride(from:to:by:)を使う
for tickMark in stride(from: 0, to: minutes, by: minuteInterval) {
    // 0から60まで5の間隔で繰り返し処理を行う(0, 5, 10, 15 ... 45, 50, 55)
    print(tickMark)
}
/*
 0
 5
 10
 15
 20
 25
 30
 35
 40
 45
 50
 55
 */

let hours = 12
let hourInterval = 3

// 最後を含める場合はstride(from:through:by:)を使う
for tickMark in stride(from: 3, through: hours, by: hourInterval) {
    // 3から12まで3の間隔で繰り返し処理を行う(3, 6, 9, 12)
    print(tickMark)
}
/*
 3
 6
 9
 12
 */
