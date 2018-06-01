// 現場のためのSwift4 ~iOSアプリ開発に不可欠な実戦スキルのすべて~
// サンプルコード
// 第6章：iOSアプリ開発のためのSwiftプログラミング その1
// 6−8：クロージャー
// sample-6-8-6.playground

import UIKit

// UIAlertActionを使用したクロージャーの書き方の一例
// UIAlertControllerのインスタンス生成
let controller = UIAlertController(title: "", message: "Choose action", preferredStyle: UIAlertControllerStyle.actionSheet)

// Trailing Closuresを使わずに通常の書き方で書いてみる
let action1 = UIAlertAction(title:"action1", style: UIAlertActionStyle.default, handler:{(action : UIAlertAction?) in
    // ここに処理を書く
    print(action!.title!)
})

// Trailing Closuresを使って書いてみる
let action2 = UIAlertAction(title:"action2", style: UIAlertActionStyle.default) { (action : UIAlertAction?) in
    // ここに処理を書く
    print(action!.title!)
}

// 略式で引数を省略して書いてみる
let action3 = UIAlertAction(title:"action3", style: UIAlertActionStyle.default) {
    // ここに処理を書く
    print($0.title!)
}
