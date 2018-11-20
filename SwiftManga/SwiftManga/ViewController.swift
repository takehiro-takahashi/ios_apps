//
//  ViewController.swift
//  SwiftManga
//
//  Created by 高橋岳宏 on 2018/11/21.
//  Copyright © 2018 高橋岳宏. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var countLabel: UILabel!
    
    @IBOutlet var runnerImageView: UIImageView!
    
    var imageArray = [UIImage]()
    
    //  経過時間用タイマー
    var elapsedTimer: Timer = Timer()
    
    //  経過時間表示用
    var countUp: Int = 0
    
    //  配列から画像を取り出す用タイマー
    var imageGetTimer: Timer = Timer()
    
    //  配列から画像を取り出す用
    var arrayCount: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let image_zero = UIImage(named: "dash0.png")
        let image_first = UIImage(named: "dash1.png")
        let image_second = UIImage(named: "dash2.png")
        let image_third = UIImage(named: "dash3.png")
        let image_fourth = UIImage(named: "dash4.png")
        let image_fifth = UIImage(named: "dash5.png")
        
        imageArray = [image_zero!, image_first!, image_second!, image_third!, image_fourth!, image_fifth!]
        
        self.runnerImageView.image = self.imageArray[arrayCount]
    }
    
    @IBAction func run(_ sender: Any) {
        
        //  タイマースタート
        elapsedTimer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true, block: { (timer) in
            //  カウントアップ
            self.countUp += 1
            
            //  ラベルに反映
            self.countLabel.text = "\(self.countUp)"
            
        })
        
        //  画像取得用タイマー
        imageGetTimer = Timer.scheduledTimer(withTimeInterval: 0.05, repeats: true, block: { (timer) in
            
            self.arrayCount += 1
            
            if (self.arrayCount > 5) {
                self.arrayCount = 0
            }
            
            self.runnerImageView.image = self.imageArray[self.arrayCount]
            
        })
    }
    
    @IBAction func stop(_ sender: Any) {
        elapsedTimer.invalidate()
        imageGetTimer.invalidate()
    }
    
}

