// 現場のためのSwift4 ~iOSアプリ開発に不可欠な実戦スキルのすべて~
// サンプルコード
// 第6章：iOSアプリ開発のためのSwiftプログラミング その1
// 6−7：条件分岐
// sample-6-7-4.playground

// guard文を使用しないでnilチェック、アンラップを行う一例
func printMessage1(_ str:String?) {
    if str == nil {
        return
    }
    let message = str!
    print(message)
}

func printMessage2(_ str:String?) {
    if str == nil {
        return
    }
    if let message = str {
        print(message)
    }
}

// guard文で定義した変数はguard文以降も使用可能
func printStringMessage(_ str:String?) {
    guard let message = str else {
        return
    }
    print(message)
}
printStringMessage (nil)
printStringMessage("Hello world")
// "hello world"
