//
//  ViewController.swift
//  SwiftImageView
//
//  Created by 高橋岳宏 on 2018/11/20.
//  Copyright © 2018 高橋岳宏. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var backImageView: UIImageView!
    
    // backImageViewの画像を切り替えるために、countをflagとして利用
    var count: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 読み込んだタイミングで1を入れておく
        count = 1
    }
    
    
    @IBAction func change(_ sender: Any) {
        
        if (count == 0) {
            
            backImageView.image = UIImage(named: "back1.jpg")
            
            count = 1
            
        } else if (count == 1) {
            
            backImageView.image = UIImage(named: "back2.jpg")
            
            count = 0
            
        }
        
    }
    

}

