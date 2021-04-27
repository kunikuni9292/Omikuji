//
//  ViewController.swift
//  Omikuji
//
//  Created by 崎原邦達 on 2021/04/27.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var MyLabel: UILabel!
    
    @IBAction func GetOmikuji(_ sender: Any) {
        //ランダム生成
        let results = ["超大吉","大吉","中吉","小吉","吉","末吉","凶","中凶","大凶"]
//    大吉・中吉・小吉・吉・末吉・凶
//        let random = arc4random_uniform(10)
        let random = arc4random_uniform(UInt32(results.count))

//        self.MyLabel.text = String(random)
        self.MyLabel.text = results[Int(random)]
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        Mylabelの縁のカラーを変更（デフォルトでは黒色）
//        MyLabel.layer.borderColor = UIColor.orange.cgColor
//        縁の太さ
//        MyLabel.layer.borderWidth = 5
//        縁の角の丸み具合
//        MyLabel.layer.cornerRadius = 50
//        Mylabelの背景色にマスクをかける
        MyLabel.layer.masksToBounds = true
//        Mylabelの背景の角をまるめる
        MyLabel.layer.cornerRadius = MyLabel.bounds.width / 2

    }
}



