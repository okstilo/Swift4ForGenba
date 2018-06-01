// 現場のためのSwift4 ~iOSアプリ開発に不可欠な実戦スキルのすべて~
// サンプルコード
// 第7章：iOS アプリ開発のためのSwift プログラミング その２
// 7−4：Swift 4.0の改良点
// sample-7-4-11.playground

// 配列の要素をswapAtを使用して入れ替える
var array = [1, 2, 3, 4, 5, 6]

print(array)
// [1, 2, 3, 4, 5, 6]

array.swapAt(0, 2)
print(array)
// [3, 2, 1, 4, 5, 6]
