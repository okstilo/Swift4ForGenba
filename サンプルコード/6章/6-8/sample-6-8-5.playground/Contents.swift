// 現場のためのSwift4 ~iOSアプリ開発に不可欠な実戦スキルのすべて~
// サンプルコード
// 第6章：iOSアプリ開発のためのSwiftプログラミング その1
// 6−8：クロージャー
// sample-6-8-5.playground

// 役割は関数だが、変数として利用したい場合の一例
struct MyStruct {
    var valueOne: Int = 50
    var valueTwo: Int = 55
    
    // 2つの変数の和が100を超えているか判定
    var isOverTotalHundred: Bool {
        return (valueOne + valueTwo) > 100
    }
}

let myStruct = MyStruct()
if myStruct.isOverTotalHundred {
    print(myStruct.valueOne)
} else {
    print(myStruct.valueTwo)
}
// 50（myStruct.valueOneの値を表示）
