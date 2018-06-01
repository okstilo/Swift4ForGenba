//
//  SearchViewController.swift
//  SampleBrowser
//
//  Created by bouyaImamura on 2018/05/09.
//  Copyright © 2018年 Takashi Sawada. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {

    // UISearchControllerを変数として保持しておく
    var searchController: UISearchController!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // 検索結果を表示するSearchResultsControllerのインスタンスを生成
        let searchResultViewController = SearchResultViewController()
        
        // UISearchControllerのインスタンス生成＆検索結果画面をSearchResultsControllerに指定
        searchController = UISearchController(searchResultsController:searchResultViewController)
        
        // このクラスを表示の起点とする
        self.definesPresentationContext = true
        
        // ナビゲーションバーに検索窓を表示する
        self.navigationItem.searchController = searchController
        
        // ナビゲーションバーにタイトルを入れる
        self.title = "検索"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationItem.largeTitleDisplayMode = .automatic
        
        // 検索処理をどのクラスで処理をするかを指定
        // SearchResultViewController を指定
        // searchResultsUpdater → searchBar.delegate へ変更。あわせてコメントアウト
        // searchController.searchResultsUpdater = searchResultViewController
        searchController.searchBar.delegate = searchResultViewController
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
