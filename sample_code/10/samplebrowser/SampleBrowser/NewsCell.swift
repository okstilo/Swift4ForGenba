//
//  NewsCell.swift
//  SampleBrowser
//
//  Created by Takashi Sawada on 2018/02/01.
//  Copyright © 2018年 Takashi Sawada. All rights reserved.
//

import UIKit

class NewsCell: UITableViewCell {

    // 追加する2つのアウトレット
    @IBOutlet weak var dateLabel: UILabel!  // 記事の公開された日時の表示
    @IBOutlet weak var titleLabel: UILabel! // 記事のタイトル
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
