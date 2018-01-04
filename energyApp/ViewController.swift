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
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var bottomResultLabel: UILabel!
    
    //ボタンが押されたときの処理
    @IBAction func weightChangeAction(_ sender: Any) {
        
        //テキストフィールドの値を取得
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        image = UIImage(named:"test")
        imageView.image = image
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

