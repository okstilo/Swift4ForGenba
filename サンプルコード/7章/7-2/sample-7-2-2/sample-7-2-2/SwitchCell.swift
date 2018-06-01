//
//  SwitchCell.swift
//  sample-7-2-2
//
//  Created by Takashi Sawada on 2018/04/17.
//  Copyright © 2018年 Takashi Sawada. All rights reserved.
//

import UIKit

// "protcol"の定義と"interface"の宣言
// ここではあくまでも何を実装するかを宣言するところ
protocol SwitchCellDelegate {
    func switchCell(_ cell:SwitchCell, switchValueChanged sender:UISwitch)
}

class SwitchCell: UITableViewCell {

    @IBOutlet weak var mySwitch: UISwitch!

    var delegate: SwitchCellDelegate? = nil   // 変数を追加
    var indexPath: IndexPath!   // 変数を追加

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func onSwitchValueChanged(_ sender: UISwitch) {
        
        // nilチェックを行い、委譲先が設定されているか確認。設定されている場合のみ以下を実行
        if let myDelegate = delegate {
            // 自身のクラスとSwitchを委譲先へデータとして渡す
            myDelegate.switchCell(self, switchValueChanged: sender)
        }
    }

}
