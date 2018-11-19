//
//  NextViewController.swift
//  SwiftButton
//
//  Created by 高橋岳宏 on 2018/11/20.
//  Copyright © 2018 高橋岳宏. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {
    
    @IBOutlet var changeLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    
    @IBAction func change(_ sender: Any) {
        
        changeLabel.text = "暗号が解除されました"
    }
    
}
