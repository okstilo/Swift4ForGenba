//
//  sample-6-4-1.swift
//  sample-6-4-1
//
//  Created by Takashi Sawada on 2018/01/19.
//  Copyright © 2018年 Takashi Sawada. All rights reserved.
//

// ここにコメントを書く

// スラッシュを2つ並べると、
// コメントになり、ここに書いてあるものは処理、実行されません

/*
 複数行のコメントは
 このように書くことができます。
 複数行にわたるコメントの場合は非常に便利です。
 */

// MARK: ここにコメントを書くとメソッドリストに表示されるようになります

// MARK: -

// MARK: - 区切り線とあわせてコメントを残すこともできます。

// TODO: ここにTODOコメントを書くと、メソッドリストに記載されます。

// TODO: - 区切り線とあわせてTODOコメントを残すこともできます。


// メソッドに対するドキュメントを入れる場合の一例

/// <#Description#>
///
/// - Parameters:
///   - num1: <#num1 description#>
///   - num2: <#num2 description#>
/// - Returns: <#return value description#>
func getMaxNumber(num1:Int, num2:Int) -> Int {
    return num1 > num2 ? num1 : num2
}
