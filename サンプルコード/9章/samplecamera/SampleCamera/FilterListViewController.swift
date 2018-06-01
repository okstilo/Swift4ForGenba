//
//  FilterListViewController.swift
//  SampleCamera
//
//  Created by Takashi Sawada on 2018/01/31.
//  Copyright © 2018年 Takashi Sawada. All rights reserved.
//

import UIKit

// FilterListViewControllerクラスの上に実装する
protocol FilterListViewControllerDelegate: class {
    func filterListViewController(_ controller:FilterListViewController, didSelectFilter filter:String, index:Int)
}

class FilterListViewController: UITableViewController {
    
    let filterList:[String] = ["",
                               "CIPhotoEffectChrome",
                               "CIPhotoEffectFade",
                               "CIPhotoEffectInstant",
                               "CIPhotoEffectMono",
                               "CIPhotoEffectNoir",
                               "CIPhotoEffectProcess",
                               "CIPhotoEffectTonal",
                               "CIPhotoEffectTransfer",
                               "CISepiaTone",
                               "CIVignette",]
    
    weak var delegate: FilterListViewControllerDelegate? = nil    // デリゲート先を保存しておく変数
    var selectedIndex: Int = 0  // 選択済みの番号を記憶しておく変数

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
    // UITableViewのセクションの数を設定
    override func numberOfSections(in tableView: UITableView) -> Int {
        // セクションは1つ
        return 1
    }
    
    // UITableViewのセクション内のセル数を設定
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // フィルターの配列に格納されている数（フィルター10個）を表示
        return filterList.count
    }
    
    // 表示するUITableViewCellの設定
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // 表示するUITableViewCellは識別子「"Cell"」で設定
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        //フィルター名を取得
        var filtername = filterList[indexPath.row]
        
        // フィルター名が空の場合は「"No Effect"」と表示させる
        if filtername.isEmpty {
            filtername = "No Effect"
        }
        
        // セルにフィルター名を記載
        cell.textLabel?.text = filtername
        
        // チェックを一旦消す
        cell.accessoryType = UITableViewCellAccessoryType.none
        
        // 選択されていた番号であれば、チェックを表示する
        if indexPath.row == selectedIndex {
            cell.accessoryType = UITableViewCellAccessoryType.checkmark
        }
        
        // 設定したセルを返す
        return cell
    }
    
    // UITableViewのいずれかのセルをタップした際の処理
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // デリゲート先が正しく設定されているかのnilチェック
        if let myDelegate = delegate {
            // 設定されていたら、各情報を引数に渡してデリゲートメソッドを実行
            myDelegate.filterListViewController(self, didSelectFilter: filterList[indexPath.row], index: indexPath.row)
        }
        // 前の画面（MainViewController）に戻る
        self.navigationController?.popViewController(animated: true)
    }
}
