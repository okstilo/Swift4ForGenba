// 現場のためのSwift4 ~iOSアプリ開発に不可欠な実戦スキルのすべて~
// サンプルコード
// 第6章：iOSアプリ開発のためのSwiftプログラミング その1
// 6−7：条件分岐
// sample-6-7-6.playground

// fallthroughを使用した一例
let number = 2

switch number {
case 1:
    print("numberの値は1")
    
case 2:
    print("numberの値は2")
    fallthrough
    
default:
    print("です") // fallthroughがあるため、これも実行される
}
// numberの値は2
// です

