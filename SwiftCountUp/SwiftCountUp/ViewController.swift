//
//  ViewController.swift
//  SwiftCountUp
//
//  Created by 高橋岳宏 on 2018/11/21.
//  Copyright © 2018 高橋岳宏. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var countLabel: UILabel!
    
    // countLabelに反映する数値
    var result: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func plus(_ sender: Any) {
        
        result += 1
        countLabel.text = "\(result)"
        
    }
    
    @IBAction func minus(_ sender: Any) {
        
        result -= 1
        countLabel.text = "\(result)"
        
    }
    
}

