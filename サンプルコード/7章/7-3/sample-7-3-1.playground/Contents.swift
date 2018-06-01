// 現場のためのSwift4 ~iOSアプリ開発に不可欠な実戦スキルのすべて~
// サンプルコード
// 第7章：iOS アプリ開発のためのSwift プログラミング その２
// 7−3：継承と拡張（extension）
// sample-7-3-1.playground

import Foundation

// 継承を使った一例
// 親クラス
class Parent: NSObject {
    func printDate() {
        // 現在の日時を出力
        print(Date())
    }
}

// サブクラス
class Child: Parent {
    override func printDate() {
        // 親クラスのメソッドを呼ぶ
        super.printDate()
        
        // 1分前の日時を出力
        print(Date(timeInterval: -60, since: Date()))
    }
}

// サブクラスのインスタンス生成
let child:Child = Child()
child.printDate()
// 親クラスの処理も呼ばれ、サブクラスの処理も実行される
