// 現場のためのSwift4 ~iOSアプリ開発に不可欠な実戦スキルのすべて~
// サンプルコード
// 第6章：iOSアプリ開発のためのSwiftプログラミング その1
// 6−7：条件分岐
// sample-6-7-3.playground

func printNumber(_ num:Int) {
    guard num > 0 else {
        // return
        // returnをコメントアウトすると、ここでエラーが発生
    }

    print(num)
}

printNumber(-1)
printNumber(0)
printNumber(2)
