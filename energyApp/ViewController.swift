//
//  ViewController.swift
//  energyApp
//
//  Created by s247 on 2018/01/02.
//  Copyright © 2018年 ami. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    //画像インスタンス初期化
    var image:UIImage!
    //テキストフィールド
    @IBOutlet weak var weightField: UITextField!

    //結果を表示させるラベル
    @IBOutlet weak var orgLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var bottomResultLabel: UILabel!
    
    //ボタンが押されたときの処理
    @IBAction func weightChangeAction(_ sender: Any) {
        //テキストフィールドの値を取得
        if let weight = Int(weightField.text!) {
            if weight >= 100 {
                orgLabel.text = "体重おもすぎて計算できない"
                resultLabel.text = ""
                bottomResultLabel.text = ""
                return
            }
            
            //計算(エネルギー)
            let energy:Int = weight * 299792458 * 299792458
            
            //計算(原発の数)
            let unclear:Int = energy / (1000000 * 1000 * 3600 * 24 * 365)
            
            //ラベルに文字を表示させる
            orgLabel.text = "あなたが持ってるエネルギーは…"
            resultLabel.text = "\(energy)Jです"
            bottomResultLabel.text = "原発\(unclear)台が1年に作るエネルギー"
            
        }

    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //画像を表示させる
        image = UIImage(named:"test")
        imageView.image = image
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

