//
//  ViewController.swift
//  textApp
//
//  Created by 細川聖矢 on 2019/06/04.
//  Copyright © 2019 Seiya. All rights reserved.
//

import UIKit

//クラスを継承
class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //表示するセル数の決定｡.countで自動で配列分だけセルを作ってくれる｡
        return kobetsumemo.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //セルに表示する変数を作る｡セルに指定したIdentifierをいれる｡
        let TextCell : UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "TextCell", for: indexPath)
        //変数の中身を作る
        TextCell.textLabel!.text = kobetsumemo[indexPath.row]
        //戻り値の設定（表示する中身)
        return TextCell
    }
    
    
    //↓デリートボタン
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            kobetsumemo.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // 新規作成したメモの情報を受取る｡前回の入力が｢nilでなければ｣取得する｡
       /*if UserDefaults.standard.object(forKey: "Memo") != nil{
            kobetsumemo = UserDefaults.standard.object(forKey: "Memo") as! [String]
            
 }*/
        if UserDefaults.standard.object(forKey: "Memo") != nil {
            kobetsumemo = UserDefaults.standard.object(forKey: "Memo") as! [String]
        }
        
    }


}

