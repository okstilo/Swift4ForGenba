// 現場のためのSwift4 ~iOSアプリ開発に不可欠な実戦スキルのすべて~
// サンプルコード
// 第6章：iOSアプリ開発のためのSwiftプログラミング その1
// 6−5：配列
// sample-6-5-3.playground

import Foundation

// 配列で格納できるのは値だけでなく、クラスも可能
class MyClass:NSObject {
}

let strArray: [String] = ["first", "second", "third"]
let classArray: [MyClass] = [MyClass(), MyClass(), MyClass()]
