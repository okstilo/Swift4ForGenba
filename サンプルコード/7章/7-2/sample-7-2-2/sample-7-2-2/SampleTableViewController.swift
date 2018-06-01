//
//  SampleTableViewController.swift
//  sample-7-2-2
//
//  Created by Takashi Sawada on 2018/04/17.
//  Copyright © 2018年 Takashi Sawada. All rights reserved.
//

import UIKit

// 委譲先の設定をするため、SwitchCellDelegateのプロトコルを実装
class SampleTableViewController: UITableViewController, SwitchCellDelegate {

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

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 10
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 10
    }

    // UITableViewで表示するセルを作成する処理
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // セルのインスタンスを作成（すでにセルのインスタンスが作られていたら、使い回しをする）
        let cell: SwitchCell = tableView.dequeueReusableCell(withIdentifier: "SwitchCell", for: indexPath) as! SwitchCell
        
        // 委譲先を自身のクラスに設定
        cell.delegate = self
        
        // 強制的にスイッチをオフにしておく
        cell.mySwitch.isOn = false
        
        // セルには順番を表示しておく
        cell.textLabel?.text = "\(indexPath.section) - \(indexPath.row)"
        
        // 順番をセルの変数に代入しておく
        cell.indexPath = indexPath
        
        // 作成したクラスを返す
        return cell
    }

    // MARK: - SwitchCellDelegate
    func switchCell(_ cell: SwitchCell, switchValueChanged sender: UISwitch) {
        // スイッチがオンになったときだけ処理
        if sender.isOn {
            // UIAlertControllerのインスタンス生成。セルの順番を表示させる
            let controller: UIAlertController = UIAlertController(title: "", message: "\(cell.indexPath.section) - \(cell.indexPath.row)", preferredStyle: .alert)
            
            // UIAlertControllerを閉じるためのOKボタンを追加
            let action:UIAlertAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            controller.addAction(action)
            
            // UIAlertControllerを表示
            present(controller, animated: true, completion: nil)
        }
    }
    
}
