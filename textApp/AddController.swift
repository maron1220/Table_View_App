//
//  AddController.swift
//  textApp
//
//  Created by 細川聖矢 on 2019/06/04.
//  Copyright © 2019 Seiya. All rights reserved.
//

import UIKit

//変数の設置｡配列型｡classを跨ってしようするのでimport UIkitの直下に置く｡
var kobetsumemo = [String]()


class AddController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var inputtext: UITextField!
    
    @IBAction func inputbutton(_ sender: Any) {
        
        //入力内容を変数に入れる
        kobetsumemo.append(inputtext.text!)
        //テキストフィールドを空にする
        inputtext.text = ""
        //userdefaultsに変数を入れる｡データを保存しておく場所の名前が"Memo"｡
        UserDefaults.standard.set(kobetsumemo, forKey: "Memo")
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
