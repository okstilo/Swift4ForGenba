//
//  SearchResultViewController.swift
//  SampleBrowser
//
//  Created by bouyaImamura on 2018/05/09.
//  Copyright © 2018年 Takashi Sawada. All rights reserved.
//

import UIKit

// SFSafariViewControllerを使用するため、インポートを行う
import SafariServices

class SearchResultViewController: UITableViewController,UISearchBarDelegate {

    // 取得したデータを保持する配列を追加
    var dataList:[SampleModel] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        // カスタムセルNewsCellを使用するため、UITableViewに登録
        let nib = UINib(nibName: "NewsCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "NewsCell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        // セクションは1つ
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // 取得した記事の数だけ表示
        return dataList.count
    }
    
    override func tableView(_ tableView: UITableView,cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // NewsCellのインスタンスを生成＆すでに作られている場合は再利用
        let cell: NewsCell = tableView.dequeueReusableCell(withIdentifier: "NewsCell", for: indexPath) as! NewsCell
        
        // データを取り出し、日付とタイトルを入れる
        let data = dataList[indexPath.row]
        cell.dateLabel.text = data.dateString
        cell.titleLabel.text = data.title.rendered
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView,didSelectRowAt indexPath: IndexPath) {
        // 選択したセルを非選択に戻す
        tableView.deselectRow(at: indexPath, animated: true)
        
        // データを取り出し、SFSafariViewControllerで表示させる
        let data = dataList[indexPath.row]
        if let url = URL(string: data.link) {
            let controller: SFSafariViewController = SFSafariViewController(url: url)
            self.present(controller, animated: true,completion: nil)
        }
    }
    
    // MARK: - UISearchResultsUpdating
    // UISearchBarの文字列に何かしら変化があったら呼ばれる
    // updateSearchResults(for searchController:)はコメントアウト
//    func updateSearchResults(for searchController:UISearchController) {
//
//        // UISearchContollerの検索窓に入力した文字列を取得
//        if let text = searchController.searchBar.text {
//
//            // データ取得関数を呼び出す
//            self.reloadListDatas(text)
//        }
//
//    }
    
    // MARK: - UISearchBarDelegate
    func searchBar(_ searchBar: UISearchBar, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        // 検索窓の文字列に何かしら変化があるたびに呼ばれる
        // 保持しているデータを空にする
        self.dataList = []
        self.tableView.reloadData()
        return true
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        // 検索を押した時に処理
        reloadListDatas(searchBar.text!)
    }
    
    func reloadListDatas(_ text:String) {
        // 文字列が空の時は処理を行わない
        if text.isEmpty {
            return
        }
        // セッション用のコンフィグを設定・今回はデフォルトの設定
        let config = URLSessionConfiguration.default
        
        // NSURLSessionのインスタンスを生成
        let session = URLSession(configuration: config)

        // 検索する文字列が日本語の場合もあるため、エンコードする
        let urlString = "https://demo.wp-api.org/wp-json/wp/v2/posts/" + "?search=" + text
        let url = URL(string: urlString.addingPercentEncoding(withAllowedCharacters: NSCharacterSet.urlQueryAllowed)!)!

        // 通信処理タスクを設定
        let task = session.dataTask(with: url) {(data,response, error) in
            // エラーが発生したらアラートを表示して終了
            if error != nil {
                let controller : UIAlertController = UIAlertController(title: nil, message: "エラーが発生しました。", preferredStyle: UIAlertControllerStyle.alert)
                controller.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.cancel, handler: nil))
                self.present(controller, animated: true, completion: nil)
                
                return
            }
            
            // JSON形式にデータを変換
            guard let jsonData: Data = data else {
                let controller : UIAlertController = UIAlertController(title: nil, message: "エラーが発生しました。", preferredStyle: UIAlertControllerStyle.alert)
                controller.addAction(UIAlertAction(title: "OK",style: UIAlertActionStyle.cancel, handler: nil))
                self.present(controller, animated: true, completion: nil)
                
                return
            }
            
            self.dataList = try! JSONDecoder().decode([SampleModel].self, from: jsonData)
            
            // メインスレッドに処理を戻す
            DispatchQueue.main.async {
                // 検索結果が0件だった場合はアラートを出す
                if self.dataList.isEmpty {
                    let controller : UIAlertController = UIAlertController(title: nil, message: "検索結果がありませんでした", preferredStyle: UIAlertControllerStyle.alert)
                    controller.addAction(UIAlertAction(title:"OK", style: UIAlertActionStyle.cancel, handler: nil))
                    self.present(controller, animated: true,completion: nil)
                    
                    return
                }
                
                // 最新のデータに更新する
                self.tableView.reloadData()
            }
        }
        // タスクを実行
        task.resume()
    }
}
