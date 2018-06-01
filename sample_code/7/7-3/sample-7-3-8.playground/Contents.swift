// 現場のためのSwift4 ~iOSアプリ開発に不可欠な実戦スキルのすべて~
// サンプルコード
// 第7章：iOS アプリ開発のためのSwift プログラミング その２
// 7−3：継承と拡張（extension）
// sample-7-3-8.playground

// サブスクリプトのエクステンションの実装例
extension String {
    // サブスクリプトを使う際のメソッドを見やすくするため関数化
    // indexで指定した桁数を返す
    func id(index: Int) -> Index {
        return self.index(self.startIndex, offsetBy: index)
    }
    
    // サブスクリプトの指定。idのメソッドを呼んでいる
    subscript(index: Int) -> String {
        return String(self[id(index: index)])
    }
}

let hello: String = "Hello, world"
print(hello[4])
// o
